const vscode = require('vscode');
const fs = require('fs');
const { LanguageClient } = require('vscode-languageclient/node');

const DEFAULT_SCRIP = '/home/install/bin/scrip';
const SERVER_LANGS = ['snobol4', 'snocone', 'rebus', 'icon', 'prolog', 'pascal', 'raku', 'scrip', 'scriptix', 'markdown'];
const SELECTOR = SERVER_LANGS.flatMap(language => [{ scheme: 'file', language }, { scheme: 'vscode-notebook-cell', language }]);

let client = null;
let chain = Promise.resolve();
let output = null;

function scripPath() {
  return vscode.workspace.getConfiguration('scrip').get('path') || DEFAULT_SCRIP;
}

async function startServer() {
  const command = scripPath();
  if (!fs.existsSync(command)) {
    output.appendLine('scrip.path names ' + command + ', which does not exist; the language server is not started.');
    vscode.window.showWarningMessage('SCRIP: the language server is not started, scrip.path names ' + command + ', which does not exist.');
    return;
  }
  output.appendLine('starting ' + command + ' --lsp');
  const next = new LanguageClient('scrip', 'SCRIP Language Server', { command, args: ['--lsp'] }, { documentSelector: SELECTOR, outputChannel: output });
  client = next;
  try { await next.start(); } catch (e) { output.appendLine('the language server did not start: ' + (e && e.message)); if (client === next) client = null; }
}

async function stopServer() {
  const old = client;
  client = null;
  if (!old) return;
  try { await old.stop(); } catch (e) { output.appendLine('the language server did not stop cleanly: ' + (e && e.message)); }
}

function restart() {
  chain = chain.then(async () => { await stopServer(); await startServer(); });
  return chain;
}

function activateClient(context) {
  output = vscode.window.createOutputChannel('SCRIP Language Server');
  context.subscriptions.push(
    output,
    vscode.workspace.onDidChangeConfiguration(e => { if (e.affectsConfiguration('scrip.path')) restart(); })
  );
  return restart();
}

function deactivateClient() {
  chain = chain.then(stopServer);
  return chain;
}

module.exports = { activateClient, deactivateClient };
