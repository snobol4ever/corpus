const vscode = require('vscode');
const path = require('path');
const { spawn } = require('child_process');

const CELL_SCHEME = 'vscode-notebook-cell:';

function notebookOfCell(notebooks, cellUri) {
  const want = vscode.Uri.parse(cellUri);
  return notebooks.find(nb => nb.uri.path === want.path && nb.getCells().some(c => c.document.uri.toString() === cellUri));
}

function cellSourceIn(notebooks, source) {
  if (!source || typeof source.path !== 'string' || !source.path.startsWith(CELL_SCHEME)) return source;
  const nb = notebookOfCell(notebooks, source.path);
  if (!nb) return source;
  const cell = nb.getCells().find(c => c.document.uri.toString() === source.path);
  return Object.assign({}, source, { path: nb.uri.fsPath, name: path.basename(nb.uri.fsPath), adapterData: { cell: cell.index } });
}

function rewriteIn(notebooks, message) {
  if (!message || message.type !== 'request' || !message.arguments || !message.arguments.source) return message;
  const source = cellSourceIn(notebooks, message.arguments.source);
  return source === message.arguments.source ? message : Object.assign({}, message, { arguments: Object.assign({}, message.arguments, { source }) });
}

function cellSourceOut(notebooks, source) {
  if (!source || typeof source.path !== 'string' || !source.adapterData || typeof source.adapterData.cell !== 'number') return source;
  const nb = notebooks.find(n => n.uri.fsPath === source.path);
  const cell = nb && nb.getCells()[source.adapterData.cell];
  return cell ? Object.assign({}, source, { path: cell.document.uri.toString() }) : source;
}

function rewriteOut(notebooks, node) {
  if (Array.isArray(node)) return node.map(x => rewriteOut(notebooks, x));
  if (!node || typeof node !== 'object') return node;
  const out = {};
  for (const k of Object.keys(node)) out[k] = k === 'source' ? cellSourceOut(notebooks, node[k]) : rewriteOut(notebooks, node[k]);
  return out;
}

class ScripDapProxy {
  constructor(command, args, notebooks) {
    this.notebooks = notebooks || (() => vscode.workspace.notebookDocuments);
    this.emitter = new vscode.EventEmitter();
    this.onDidSendMessage = this.emitter.event;
    this.buffer = Buffer.alloc(0);
    this.ended = false;
    this.child = spawn(command, args, { stdio: ['pipe', 'pipe', 'pipe'] });
    this.child.stdout.on('data', chunk => this.read(chunk));
    this.child.stderr.on('data', chunk => this.emit({ type: 'event', seq: 0, event: 'output', body: { category: 'stderr', output: chunk.toString('utf8') } }));
    this.child.on('error', e => this.fail('could not start ' + command + ': ' + e.message));
    this.child.on('exit', (code, signal) => { if (!this.ended) this.fail('scrip --dap ended (' + (signal || 'exit ' + code) + ')'); });
  }
  fail(text) {
    this.ended = true;
    this.emit({ type: 'event', seq: 0, event: 'output', body: { category: 'stderr', output: text + '\n' } });
    this.emit({ type: 'event', seq: 0, event: 'terminated' });
  }
  emit(message) { this.emitter.fire(message); }
  read(chunk) {
    this.buffer = Buffer.concat([this.buffer, chunk]);
    for (;;) {
      const end = this.buffer.indexOf('\r\n\r\n');
      if (end < 0) return;
      const m = /Content-Length:\s*(\d+)/i.exec(this.buffer.slice(0, end).toString('ascii'));
      if (!m) { this.buffer = this.buffer.slice(end + 4); continue; }
      const n = Number(m[1]), from = end + 4;
      if (this.buffer.length < from + n) return;
      const body = this.buffer.slice(from, from + n).toString('utf8');
      this.buffer = this.buffer.slice(from + n);
      try { this.emit(rewriteOut(this.notebooks(), JSON.parse(body))); } catch (e) { this.emit({ type: 'event', seq: 0, event: 'output', body: { category: 'stderr', output: 'scrip --dap sent a message this extension could not read: ' + e.message + '\n' } }); }
    }
  }
  handleMessage(message) {
    if (this.ended || !this.child.stdin.writable) return;
    const text = JSON.stringify(rewriteIn(this.notebooks(), message));
    this.child.stdin.write('Content-Length: ' + Buffer.byteLength(text, 'utf8') + '\r\n\r\n' + text);
  }
  dispose() {
    this.ended = true;
    this.emitter.dispose();
    if (this.child.exitCode === null) this.child.kill();
  }
}

module.exports = { ScripDapProxy, rewriteIn, rewriteOut };
