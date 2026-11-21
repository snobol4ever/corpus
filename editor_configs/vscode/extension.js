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

exports.activate = (context) => {
  context.subscriptions.push(
    vscode.commands.registerCommand('scrip.openPlAsProlog', openPlAsProlog),
    vscode.commands.registerCommand('scrip.runFile', runFile),
    vscode.tasks.registerTaskProvider('scrip', provider)
  );
};

exports.deactivate = () => {};
