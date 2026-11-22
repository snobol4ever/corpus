const vscode = require('vscode');
const path = require('path');

const DEFAULT_SCRIP = '/home/install/bin/scrip';
const RUNNABLE = new Set(['snobol4', 'snocone', 'rebus', 'icon', 'prolog', 'pascal', 'raku', 'scriptix']);
const FENCE = /^\s*```\s*(snobol4|snobol|spitbol|scrip|snocone|rebus|icon|unicon|prolog|pascal|raku)\s*$/im;
const MATCHERS = ['$scrip', '$scrip-icon', '$scrip-prolog', '$scrip-pascal', '$scrip-raku', '$scrip-snocone'];

async function openPlAsProlog() {
  const files = vscode.workspace.getConfiguration('files');
  const assoc = Object.assign({}, files.get('associations') || {});
  assoc['*.pl'] = 'prolog';
  await files.update('associations', assoc, vscode.ConfigurationTarget.Global);
  vscode.window.showInformationMessage('SCRIP: files.associations now opens *.pl as Prolog (user settings).');
}

function scripPath() {
  return vscode.workspace.getConfiguration('scrip').get('path') || DEFAULT_SCRIP;
}

function runnable(doc) {
  if (doc.uri.scheme !== 'file') return false;
  if (RUNNABLE.has(doc.languageId)) return true;
  return doc.languageId === 'markdown' && FENCE.test(doc.getText());
}

function taskFor(definition) {
  const file = definition.file;
  const cwd = file.includes('${') ? '${fileDirname}' : path.dirname(file);
  const execution = new vscode.ProcessExecution(scripPath(), [file], { cwd });
  const name = file.includes('${') ? 'Run file' : 'Run ' + path.basename(file);
  const task = new vscode.Task(definition, vscode.TaskScope.Workspace, name, 'scrip', execution, MATCHERS);
  task.presentationOptions = { reveal: vscode.TaskRevealKind.Always, clear: true };
  return task;
}

const provider = {
  provideTasks() {
    const seen = new Set();
    const tasks = [];
    for (const doc of vscode.workspace.textDocuments) {
      if (!runnable(doc) || seen.has(doc.uri.fsPath)) continue;
      seen.add(doc.uri.fsPath);
      tasks.push(taskFor({ type: 'scrip', file: doc.uri.fsPath }));
    }
    return tasks;
  },
  resolveTask(task) {
    return task.definition.file ? taskFor(task.definition) : undefined;
  },
};

async function runFile() {
  const editor = vscode.window.activeTextEditor;
  if (!editor || !runnable(editor.document)) {
    vscode.window.showErrorMessage('SCRIP: the active editor holds no SCRIP program or document.');
    return;
  }
  if (editor.document.isDirty) await editor.document.save();
  await vscode.tasks.executeTask(taskFor({ type: 'scrip', file: editor.document.uri.fsPath }));
}


// THE NOTEBOOK'S LANGUAGE IS ITS %%Lang LINE (scrip_ide step 5, D6): a code cell's language is its first line's tag, any case, unicon read as icon (D1), a cell with no
// %% line SNOBOL4 (kernel.c k_cell_lang); a display magic (%%html, %%svg) leaves the language as it is. The line stays the law: the language follows it when a cell opens
// or its first line changes, and a language PICKED in VS Code's picker (a change this code did not make) is written into the cell, a %% line rewritten, a cell with none
// gaining one, the rest of the cell unchanged.
const CELL_LANG = { snobol4: 'snobol4', snobol: 'snobol4', spitbol: 'snobol4', snocone: 'snocone', rebus: 'rebus', icon: 'icon', unicon: 'icon', prolog: 'prolog', pascal: 'pascal', raku: 'raku' };
const PERCENT_LINE = /^%%\s*([A-Za-z0-9_]+)\s*$/;
const seenCells = new Set();
const expectedLang = new Map();

function cellLanguage(text) {
  const first = text.split('\n', 1)[0].replace(/\r$/, '');
  const m = PERCENT_LINE.exec(first);
  if (!m) return first.startsWith('%%') ? null : 'snobol4';
  return CELL_LANG[m[1].toLowerCase()] || null;
}

function codeCellOf(doc) {
  if (doc.uri.scheme !== 'vscode-notebook-cell') return undefined;
  for (const nb of vscode.workspace.notebookDocuments) {
    for (const cell of nb.getCells()) {
      if (cell.kind === vscode.NotebookCellKind.Code && cell.document.uri.toString() === doc.uri.toString()) return cell;
    }
  }
  return undefined;
}

async function followLine(doc) {
  const want = cellLanguage(doc.getText());
  if (!want || doc.languageId === want) return;
  const key = doc.uri.toString();
  expectedLang.set(key, want);
  try { await vscode.languages.setTextDocumentLanguage(doc, want); } catch (e) { expectedLang.delete(key); }
}

async function writeLine(cell, lang) {
  const doc = cell.document, first = doc.lineAt(0), edit = new vscode.WorkspaceEdit();
  const m = PERCENT_LINE.exec(first.text.replace(/\r$/, ''));
  if (m && CELL_LANG[m[1].toLowerCase()]) edit.replace(doc.uri, first.range, '%%' + lang);
  else edit.insert(doc.uri, new vscode.Position(0, 0), '%%' + lang + '\n');
  await vscode.workspace.applyEdit(edit);
}

async function cellOpened(doc) {
  const cell = codeCellOf(doc);
  if (!cell) return;
  const key = doc.uri.toString(), lang = doc.languageId;
  if (!seenCells.has(key)) { seenCells.add(key); await followLine(doc); return; }
  if (expectedLang.get(key) === lang) { expectedLang.delete(key); return; }
  if (lang === cellLanguage(doc.getText()) || !Object.values(CELL_LANG).includes(lang)) return;
  await writeLine(cell, lang);
}

function notebookOpened(nb) { for (const cell of nb.getCells()) if (cell.kind === vscode.NotebookCellKind.Code) cellOpened(cell.document); }

function followNotebooks(context) {
  context.subscriptions.push(
    vscode.workspace.onDidOpenNotebookDocument(notebookOpened),
    vscode.workspace.onDidOpenTextDocument(cellOpened),
    vscode.workspace.onDidChangeTextDocument(e => {
      if (e.document.uri.scheme !== 'vscode-notebook-cell' || !codeCellOf(e.document)) return;
      if (e.contentChanges.some(c => c.range.start.line === 0)) followLine(e.document);
    })
  );
  vscode.workspace.notebookDocuments.forEach(notebookOpened);
}

const DEBUG_LANGS = ['snobol4', 'snocone', 'rebus', 'icon', 'prolog', 'pascal', 'raku'];

const debugConfigs = {
  async resolveDebugConfiguration(folder, config) {
    const editor = vscode.window.activeTextEditor;
    if (!config.type || config.type === 'scrip') {
      if (!config.program && (!editor || !DEBUG_LANGS.includes(editor.document.languageId))) { vscode.window.showInformationMessage('Open a SNOBOL4, Snocone, Rebus, Icon, Prolog, Pascal or Raku file to debug it.'); return undefined; }
      if (!config.program) config.program = editor.document.uri.fsPath;
      config.type = 'scrip';
      if (!config.request) config.request = 'launch';
      if (!config.name) config.name = 'Debug ' + path.basename(config.program);
      if (!config.cwd && folder) config.cwd = folder.uri.fsPath;
      if (editor && editor.document.isDirty && editor.document.uri.fsPath === config.program) await editor.document.save();
    }
    return config;
  }
};

exports.activate = (context) => {
  context.subscriptions.push(
    vscode.commands.registerCommand('scrip.openPlAsProlog', openPlAsProlog),
    vscode.commands.registerCommand('scrip.runFile', runFile),
    vscode.tasks.registerTaskProvider('scrip', provider),
    vscode.debug.registerDebugConfigurationProvider('scrip', debugConfigs),
    vscode.debug.registerDebugAdapterDescriptorFactory('scrip', { createDebugAdapterDescriptor: () => new vscode.DebugAdapterExecutable(scripPath(), ['--dap']) })
  );
  followNotebooks(context);
};

exports.deactivate = () => {};
