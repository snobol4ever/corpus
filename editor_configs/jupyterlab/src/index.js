// index.js -- ONE JUPYTERLAB EXTENSION REGISTERS OUR LANGUAGES AND COLOURS THEM WITH ONE GENERIC TOKENIZER OVER THE CONVERTED SUBLIME GRAMMARS (CIO-81, CTO-597).
// THE ONE KERNEL, SCRIP, names its language scrip: each of its cells is coloured by the cell's own language (its first line, two percent signs and a name; else SNOBOL4).
// The four languages are registered by themselves too, for a file in the text editor (by its extension) and for a kernel a user starts with one default language.
import { EditorExtensionRegistry, IEditorExtensionRegistry, IEditorLanguageRegistry } from '@jupyterlab/codemirror';
import { EditorView } from '@codemirror/view';
import { LanguageSupport, StreamLanguage } from '@codemirror/language';
import { IEditorTracker } from '@jupyterlab/fileeditor';
import { INotebookTracker } from '@jupyterlab/notebook';
import { ILauncher } from '@jupyterlab/launcher';
import { LabIcon } from '@jupyterlab/ui-components';
import { tokenize, tag, cellLanguage } from './tokenizer.js';
import snobol4 from '../grammars/snobol4.json';
import snocone from '../grammars/snocone.json';
import icon from '../grammars/icon.json';
import prolog from '../grammars/prolog.json';
import pascal from '../grammars/pascal.json';
import raku from '../grammars/raku.json';
import rebus from '../grammars/rebus.json';

const LANGUAGES = [
  { name: 'snobol4', displayName: 'SNOBOL4', mime: 'text/x-snobol4', extensions: ['sno', 'spt', 'inc'], grammar: snobol4 },
  { name: 'snocone', displayName: 'Snocone', mime: 'text/x-snocone', extensions: ['sc'], grammar: snocone },
  { name: 'icon', displayName: 'Icon', mime: ['text/x-icon', 'text/x-unicon'], extensions: ['icn'], grammar: icon },
  { name: 'prolog', displayName: 'Prolog', mime: 'text/x-prolog', extensions: ['pro'], grammar: prolog },
  { name: 'pascal', displayName: 'Pascal', mime: 'text/x-pascal', extensions: ['pas', 'pp', 'lpr', 'dpr'], grammar: pascal },
  { name: 'raku', displayName: 'Raku', mime: 'text/x-raku', extensions: ['raku', 'rakumod'], grammar: raku },
  { name: 'rebus', displayName: 'Rebus', mime: 'text/x-rebus', extensions: ['reb'], grammar: rebus }
];

// One line's next token from the tokenizer: a line is tokenized once, at its start, and handed out token by token; the stack moves at the line's end.
function step(grammar, stream, state) {
  if (stream.sol()) {
    const r = tokenize(grammar, stream.string, state.stack);
    state.tokens = r.tokens;
    state.next = r.stack;
    state.at = 0;
  }
  while (state.at < state.tokens.length && state.tokens[state.at].end <= stream.pos) state.at++;
  const t = state.tokens[state.at];
  let style = null;
  if (t && t.start <= stream.pos) { stream.pos = t.end; style = tag(t.scope); } else if (t) stream.pos = t.start; else stream.skipToEnd();
  if (stream.eol()) state.stack = state.next;
  return style;
}

// A stream parser of one language: its state is the tokenizer's stack.
function streamParser(grammar) {
  return {
    startState: () => ({ stack: ['main'], next: ['main'], tokens: [], at: 0 }),
    copyState: s => ({ stack: s.stack.slice(), next: s.next.slice(), tokens: s.tokens, at: s.at }),
    token: (stream, state) => step(grammar, stream, state),
    blankLine(state) { state.stack = tokenize(grammar, '', state.stack).stack; }
  };
}

// The stream parser of the one kernel's cells: the first line of a cell says its language (two percent signs and a name), any other cell is SNOBOL4. Each cell is
// its own document, so the first line of the document is the first line of the cell. The tag line is a keyword; a language with no grammar yet is plain text.
function scripParser(grammars) {
  return {
    startState: () => ({ first: true, name: 'snobol4', stack: ['main'], next: ['main'], tokens: [], at: 0 }),
    copyState: s => ({ first: s.first, name: s.name, stack: s.stack.slice(), next: s.next.slice(), tokens: s.tokens, at: s.at }),
    token(stream, state) {
      if (state.first && stream.sol()) {
        const c = cellLanguage(stream.string);
        state.first = false;
        state.name = c.name;
        if (c.tagged) { stream.skipToEnd(); return 'keyword'; }
      }
      if (!state.name) { stream.skipToEnd(); return null; }
      return step(grammars[state.name], stream, state);
    },
    blankLine(state) {
      state.first = false;
      if (state.name) state.stack = tokenize(grammars[state.name], '', state.stack).stack;
    }
  };
}

const plugin = {
  id: 'scrip-highlight:plugin',
  description: 'Syntax colouring for the cells of the SCRIP kernel: SNOBOL4, Snocone, Icon, Prolog, Pascal, Raku and Rebus, by each cell.',
  autoStart: true,
  requires: [IEditorLanguageRegistry],
  activate: (app, languages) => {
    try {
      languages.addLanguage({ name: 'scrip', displayName: 'SCRIP', mime: 'text/x-scrip', extensions: [], load: async () => new LanguageSupport(StreamLanguage.define(scripParser({ snobol4, snocone, icon, prolog, pascal, raku, rebus }))) });
    } catch (e) {
      console.warn('scrip-highlight: scrip is not registered: ' + e);
    }
    for (const l of LANGUAGES) {
      try {
        languages.addLanguage({ name: l.name, displayName: l.displayName, mime: l.mime, extensions: l.extensions, load: async () => new LanguageSupport(StreamLanguage.define(streamParser(l.grammar))) });
      } catch (e) {
        console.warn('scrip-highlight: ' + l.name + ' is not registered: ' + e);
      }
    }
  }
};

// THE LANGUAGE FILES (Lon 2026-11-15: "We want an icon for prolog, icon, and pascal. whatever we have sublime syntax files for."): one row a language. Each is a
// file type of its own (its icon in the file browser and on its editor's tab), its editor reads the row's MIME type whatever JupyterLab makes of the extension
// (it takes .pl for Perl, and knows Pascal by .p and .pas alone), and the launcher's Other section carries a card that makes a new one, as it makes a Python
// file. The icon is the kernel's own square with the language's two letters and its own colour. Pascal has no grammar here: JupyterLab's own Pascal mode colours it.
const FILES = [
  { name: 'snobol4', label: 'SNOBOL4', mime: 'text/x-snobol4', extensions: ['sno', 'spt', 'sbl'], letters: 'S4', colour: '#1f6feb' },
  { name: 'snocone', label: 'Snocone', mime: 'text/x-snocone', extensions: ['sc'], letters: 'Sc', colour: '#0a7ea4' },
  { name: 'icon', label: 'Icon', mime: 'text/x-icon', extensions: ['icn'], letters: 'Ic', colour: '#2da44e' },
  { name: 'prolog', label: 'Prolog', mime: 'text/x-prolog', extensions: ['pl', 'pro', 'prolog', 'plt'], letters: 'Pl', colour: '#d1242f' },
  { name: 'pascal', label: 'Pascal', mime: 'text/x-pascal', extensions: ['pas', 'pp', 'lpr', 'dpr'], letters: 'Pa', colour: '#9a6700' }
];
for (const f of FILES) {
  f.icon = new LabIcon({
    name: 'scrip-highlight:' + f.name,
    svgstr: '<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 64 64"><rect width="64" height="64" rx="12" fill="' + f.colour + '"/><text x="32" y="44" font-family="sans-serif" font-size="32" font-weight="700" text-anchor="middle" fill="#ffffff">' + f.letters + '</text></svg>'
  });
  f.command = 'scrip-highlight:new-' + f.name + '-file';
  f.path = new RegExp('\\.(' + f.extensions.join('|') + ')$', 'i');
}

const files = {
  id: 'scrip-highlight:files',
  description: 'A file type, an icon and a launcher card for a SNOBOL4, Snocone, Icon, Prolog and Pascal file; its editor takes the language whatever the extension is taken for.',
  autoStart: true,
  optional: [ILauncher, IEditorTracker],
  activate: (app, launcher, editors) => {
    FILES.forEach((f, i) => {
      try {
        app.docRegistry.addFileType({ name: f.name, displayName: f.label + ' File', extensions: f.extensions.map(e => '.' + e), mimeTypes: [f.mime], icon: f.icon, fileFormat: 'text', contentType: 'file' });
      } catch (e) {
        console.warn('scrip-highlight: the ' + f.label + ' file type is not registered: ' + e);
      }
      app.commands.addCommand(f.command, {
        label: args => (args.isPalette ? 'New ' + f.label + ' File' : f.label + ' File'),
        caption: 'Create a new ' + f.label + ' file',
        icon: args => (args.isPalette ? undefined : f.icon),
        execute: async args => {
          const made = await app.commands.execute('docmanager:new-untitled', { path: args.cwd || '', type: 'file', ext: f.extensions[0] });
          return made ? app.commands.execute('docmanager:open', { path: made.path, factory: 'Editor' }) : undefined;
        }
      });
      if (launcher) launcher.add({ command: f.command, category: 'Other', rank: 3 + i });
    });
    const mark = w => {
      const f = FILES.find(x => x.path.test(w.context.path));
      if (!f) return;
      w.title.icon = f.icon;
      if (w.content.model.mimeType !== f.mime) w.content.model.mimeType = f.mime;
    };
    if (editors) {
      editors.forEach(mark);
      editors.widgetAdded.connect((_, w) => { mark(w); w.context.pathChanged.connect(() => mark(w)); });
    }
  }
};

// A JUMP SCROLLS TO ITS TARGET (Lon 2026-11-22: go to definition "did high light but did not scroll to location"; MEASURED on Lab 4.5.2 and 4.6.6, all four windowing modes, the python3 entry too):
// jupyterlab-lsp selects the target and activates its cell, and the Lab reveals the cell, never the cursor's line, so a target in a cell taller than the view stays out of it.
// A selection set with no document change and no user event (a jump is programmatic; a click or a key is the user's and CodeMirror shows it) brings the cursor's line to the
// middle of the notebook's view when it stands outside it, again at 120 and 500 ms since the Lab's own scroll may come last.
// ONLY A NOTEBOOK OF A SCRIP KERNEL ENTRY (the cqo's and the cao's ruling 2026-11-23): the python3 entry is the control that tells our fault from the Lab's, and it stays as the Lab has it.
const USER = ['select', 'input', 'delete', 'move', 'undo', 'redo'];
function ours(panel) {
  const md = panel.model && panel.model.getMetadata ? panel.model.getMetadata('kernelspec') : null;
  const kernel = panel.sessionContext && panel.sessionContext.session ? panel.sessionContext.session.kernel : null;
  const name = (kernel && kernel.name) || (md && md.name) || '';
  return /^scrip($|-)/.test(name);
}
function reveal(view, panel) {
  if (!view.dom.isConnected || !panel.content.isVisible || !ours(panel)) return;
  const outer = panel.content.node.querySelector('.jp-WindowedPanel-outer') || panel.content.node;
  const block = view.lineBlockAt(view.state.selection.main.head);
  const top = view.documentTop + block.top;
  const box = outer.getBoundingClientRect();
  if (top >= box.top && top + block.height <= box.bottom) return;
  outer.scrollTop += top + block.height / 2 - (box.top + box.height / 2);
}

const jump = {
  id: 'scrip-highlight:reveal',
  description: 'After a jump (go to definition and the like) of a SCRIP notebook the cursor line is brought into the notebook view.',
  autoStart: true,
  requires: [INotebookTracker, IEditorExtensionRegistry],
  activate: (app, notebooks, extensions) => {
    extensions.addExtension({
      name: 'scrip-highlight:reveal',
      factory: () => EditorExtensionRegistry.createImmutableExtension(EditorView.updateListener.of(update => {
        if (!update.selectionSet || update.docChanged || update.transactions.some(t => USER.some(u => t.isUserEvent(u)))) return;
        const panel = notebooks.find(p => p.node.contains(update.view.dom));
        if (!panel) return;
        [0, 120, 500].forEach(ms => setTimeout(() => { try { reveal(update.view, panel); } catch (e) { console.warn('scrip-highlight: reveal: ' + e); } }, ms));
      }))
    });
  }
};

export default [plugin, files, jump];
