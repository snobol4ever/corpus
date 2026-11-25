// index.js -- ONE JUPYTERLAB EXTENSION REGISTERS OUR LANGUAGES AND COLOURS THEM WITH ONE GENERIC TOKENIZER OVER THE CONVERTED SUBLIME GRAMMARS (CIO-81, CTO-597).
// THE ONE KERNEL, SCRIP, names its language scrip: each of its cells is coloured by the cell's own language (its first line, two percent signs and a name; else SNOBOL4).
// The four languages are registered by themselves too, for a file in the text editor (by its extension) and for a kernel a user starts with one default language.
import { EditorExtensionRegistry, IEditorExtensionRegistry, IEditorLanguageRegistry } from '@jupyterlab/codemirror';
import { EditorView } from '@codemirror/view';
import { LanguageSupport, StreamLanguage } from '@codemirror/language';
import { IEditorTracker } from '@jupyterlab/fileeditor';
import { INotebookTracker } from '@jupyterlab/notebook';
import { ILauncher } from '@jupyterlab/launcher';
import { ITableOfContentsRegistry } from '@jupyterlab/toc';
import { ILSPDocumentConnectionManager } from '@jupyterlab/lsp';
import { IRenderMimeRegistry } from '@jupyterlab/rendermime';
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
  { name: 'scrip-pascal', displayName: 'Pascal (SCRIP)', mime: 'text/x-scrip-pascal', extensions: [], grammar: pascal },
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

// A stream parser of one language: its state is the tokenizer's stack. A TAG LINE IS A TAG IN EVERY ENTRY (developer_14 2026-11-25, the cqo's G row): the first line
// of a cell that names a language is a keyword whatever the entry's grammar, and the grammar starts at the second line, as the mixed entry's scripParser does.
function streamParser(grammar) {
  return {
    startState: () => ({ first: true, stack: ['main'], next: ['main'], tokens: [], at: 0 }),
    copyState: s => ({ first: s.first, stack: s.stack.slice(), next: s.next.slice(), tokens: s.tokens, at: s.at }),
    token(stream, state) {
      if (state.first && stream.sol()) {
        state.first = false;
        if (cellLanguage(stream.string).tagged) { stream.skipToEnd(); return 'keyword'; }
      }
      return step(grammar, stream, state);
    },
    blankLine(state) { state.first = false; state.stack = tokenize(grammar, '', state.stack).stack; }
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
// THE DEBUGGER'S OWN HIGHLIGHT (developer_14 2026-11-24, the cao's ruling): a stop's line is brought in by the Lab's own reveal; ours is left out for it (the walk of a deep stop in a non-first cell is the proof).
const DEBUG_HL = '.jp-DebuggerEditor-highlight';
const DEBUG_PAUSED = '.jp-DebuggerPausedOverlay';
// true when the cursor sits on the line the debugger highlights: the Lab's own reveal has just brought a stop's line in, so ours is left out; a jump that moves the cursor elsewhere (go to definition) is revealed as before
function stopLine(view, panel) {
  if (!panel.node.querySelector(DEBUG_PAUSED)) return false;
  const hl = view.dom.querySelector(DEBUG_HL);
  if (!hl) return true;
  const d = view.state.doc;
  return d.lineAt(view.posAtDOM(hl)).number === d.lineAt(view.state.selection.main.head).number;
}


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
        [0, 120, 500].forEach(ms => setTimeout(() => { try { if (stopLine(update.view, panel)) return; reveal(update.view, panel); } catch (e) { console.warn('scrip-highlight: reveal: ' + e); } }, ms));
      }))
    });
  }
};

// THE PASCAL CELLS OF A SCRIP NOTEBOOK (the cao's ruling 2026-11-25 on the Lab's Pascal colouring, option b): the Lab's built-in Pascal mode owns text/x-pascal, so our entry above
// carries its own mime and its extensions stay with the file types. A cell of a SCRIP notebook whose editor is text/x-pascal is set to our mime; python3 and a plain .pas file keep the Lab's mode.
const SCRIP_PASCAL = 'text/x-scrip-pascal';
const pascalCells = {
  id: 'scrip-highlight:pascal-cells',
  description: 'The Pascal cells of a SCRIP notebook are coloured by our Pascal grammar, not the Lab built-in Pascal mode.',
  autoStart: true,
  requires: [INotebookTracker, IEditorLanguageRegistry],
  activate: (app, notebooks, languages) => {
    // THE LEGACY LOAD FIRST (the cao's cure of 2026-11-25 17:0x, on the Lab's CodeMirrorEditor._onMimeTypeChanged, which reconfigures on every mime change with no check that the mime is still the one it loaded): the Lab's own Pascal mode is loaded when a notebook first sets text/x-pascal, and its reconfigure can land after ours. Awaiting that same load first lets the Lab's reconfigure run before ours is asked for, so ours lands last.
    const fix = async panel => {
      try {
        if (!ours(panel)) return;
        await languages.getLanguage('text/x-pascal');
        panel.content.widgets.forEach(cell => {
          const ed = cell.editor;
          if (cell.model.type === 'code' && ed && ed.model && ed.model.mimeType === 'text/x-pascal') ed.model.mimeType = SCRIP_PASCAL;
        });
      } catch (e) {
        console.warn('scrip-highlight: pascal cells: ' + e);
      }
    };
    // the cells are made after the kernel is ready and the editors after the cells: one sweep is too early, so the sweep runs again at a few delays (measured in the page 2026-11-25)
    const sweep = panel => { fix(panel); [100, 400, 1200].forEach(ms => setTimeout(() => fix(panel), ms)); };
    notebooks.widgetAdded.connect((_, panel) => {
      sweep(panel);
      panel.revealed.then(() => sweep(panel));
      panel.sessionContext.ready.then(() => sweep(panel));
      panel.sessionContext.kernelChanged.connect(() => sweep(panel));
      panel.content.widgetAdded.connect(() => sweep(panel));
      panel.content.model.cells.changed.connect(() => sweep(panel));
    });
  }
};

// THE NOTEBOOK'S OUTLINE (the cao's ruling of 2026-11-25, on developer_07's measurement; row jupyter-the-labs-table-of-contents-shows-a-scrip-notebooks-symbols).
// The Lab's table of contents of a notebook is the core notebook factory's model: its markdown headings alone, since jupyterlab-lsp's symbol factory takes file editors alone.
// For a notebook of a SCRIP kernel entry this factory wraps that model: the markdown headings stay, and the server's documentSymbol of the notebook's one virtual
// document is added beneath each code cell, in cell order, then the server's order. A cell the server cannot answer adds nothing and says nothing untrue.
// THE PRECEDENCE is a private field of the Lab's table of contents registry (`_generators`, a Map read in insertion order by getModel): at activation our factory
// is moved to its front, whatever order the plugins came in, and the outline walk is the guard on a Lab upgrade (a registry that is not a Map is said on the
// console and left as the Lab has it). The pinned Lab is 4.6.6, the version of @jupyterlab/toc 6.6.6 in devDependencies.
const SYMBOLS = 'textDocument/documentSymbol';
function outlineFlatten(list, level, out) {
  for (const s of list || []) {
    const range = s.location ? s.location.range : s.range;
    const at = s.location ? s.location.range.start : (s.selectionRange || s.range || {}).start;
    if (range && at) out.push({ name: s.name, level, at });
    if (s.children) outlineFlatten(s.children, level + 1, out);
  }
  return out;
}
function outlineAdapter(manager, panel) {
  for (const a of manager.adapters.values()) if (a.widget && a.widget.node.contains(panel.node)) return a;
  return null;
}
async function outlineSymbols(manager, panel) {
  const a = outlineAdapter(manager, panel);
  const vd = a && a.virtualDocument;
  if (!vd) return null;
  const conn = manager.connections.get(vd.uri);
  if (!conn || !conn.isReady || !conn.serverCapabilities.documentSymbolProvider) return null;
  const list = await conn.clientRequests[SYMBOLS].request({ textDocument: { uri: vd.documentInfo.uri } });
  const byCell = new Map();
  const cells = panel.content.widgets;
  for (const s of outlineFlatten(list, 1, [])) {
    const held = vd.getEditorAtVirtualLine({ line: s.at.line, ch: s.at.character });
    const editor = held && held.getEditor ? held.getEditor() : held;
    const idx = cells.findIndex(c => c.model.type === 'code' && c.editor && c.editor === editor);
    if (idx < 0) continue;
    const at = vd.transformVirtualToEditor({ line: s.at.line, ch: s.at.character });
    if (!at) continue;
    if (!byCell.has(cells[idx])) byCell.set(cells[idx], []);
    byCell.get(cells[idx]).push({ name: s.name, level: s.level, at: { line: at.line, column: at.ch }, idx });
  }
  return byCell;
}
function outlineJump(panel, idx, at) {
  panel.content.activeCellIndex = idx;
  const cell = panel.content.widgets[idx];
  if (cell && cell.editor) { cell.editor.setCursorPosition(at); cell.editor.focus(); }
}
function outlineMerge(panel, heads, byCell) {
  const out = [];
  const used = new Set();
  for (const cell of panel.content.widgets) {
    for (const h of heads) if (h.cellRef === cell) { out.push(h); used.add(h); }
    for (const s of (byCell && byCell.get(cell)) || []) {
      out.push({ text: s.name, level: s.level, prefix: '', collapsed: false, cellRef: cell, onClick: () => outlineJump(panel, s.idx, s.at) });
    }
  }
  for (const h of heads) if (!used.has(h)) out.push(h);
  return out;
}
function outlineWrap(core, panel, factory) {
  const state = { byCell: null, timer: null, tries: 0 };
  const base = core.getHeadings.bind(core);
  core.getHeadings = async () => {
    const heads = await base();
    return ours(panel) && state.byCell && heads ? outlineMerge(panel, heads, state.byCell) : heads;
  };
  const refresh = async () => {
    try {
      state.byCell = ours(panel) ? await outlineSymbols(factory.manager, panel) : null;
    } catch (e) {
      state.byCell = null;
      console.warn('scrip-highlight: outline: ' + e);
    }
    if (!core.isDisposed) core.refresh().catch(e => console.warn('scrip-highlight: outline: refresh: ' + e));
    if (state.byCell === null && ours(panel) && state.tries++ < 20 && !panel.isDisposed) setTimeout(refresh, 1000);
  };
  const later = () => { clearTimeout(state.timer); state.timer = setTimeout(refresh, 400); };
  panel.content.model.contentChanged.connect(later);
  panel.disposed.connect(() => { clearTimeout(state.timer); });
  panel.context.ready.then(refresh).catch(() => {});
  return core;
}
function outlineCoreFor(registry, factory, panel) {
  for (const g of registry._generators.values()) if (g !== factory && g.isApplicable(panel)) return g;
  return null;
}
function outlineFirst(registry, factory) {
  const gens = registry._generators;
  if (!(gens instanceof Map)) {
    console.error('scrip-highlight: outline: the table of contents registry has no generator map; the notebook outline is left as the Lab has it');
    return;
  }
  const entries = [...gens.entries()];
  const mine = entries.find(([, v]) => v === factory);
  if (!mine) return;
  gens.clear();
  gens.set(mine[0], mine[1]);
  for (const [k, v] of entries) if (k !== mine[0]) gens.set(k, v);
  if (gens.values().next().value !== factory) console.error('scrip-highlight: outline: the factory is not first in the table of contents registry after the reorder');
}
const outline = {
  id: 'scrip-highlight:outline',
  description: 'The table of contents of a SCRIP notebook lists the server\'s symbols of each code cell beside the markdown headings.',
  autoStart: true,
  requires: [ITableOfContentsRegistry, ILSPDocumentConnectionManager],
  activate: (app, registry, manager) => {
    const factory = {
      name: 'scrip-outline',
      manager,
      isApplicable: panel => !!(panel && panel.content && 'activeCellIndex' in panel.content),
      createNew: (panel, translator) => {
        const core = outlineCoreFor(registry, factory, panel);
        if (!core) return null;
        return outlineWrap(core.createNew(panel, translator), panel, factory);
      },
      getToolbarItems: panel => {
        const core = outlineCoreFor(registry, factory, panel);
        return core && core.getToolbarItems ? core.getToolbarItems(panel) : undefined;
      }
    };
    registry.add(factory);
    outlineFirst(registry, factory);
  }
};


// The signature tooltip of a Raku label is markdown to the Lab: a pair of dollar signs in it is inline math, so the highlighted parameter's mark is cut
// by a math span and a closing tag shows as text (MEASURED 2026-11-25 by developer_12 in the page). The dollars are written as the entity &#36; inside the
// language-raku pre block of the signature's markdown, after the plugin serialises it and before the Lab renders it; no other markdown string changes, math
// included. The class is ours alone, a Raku cell's highlight, so no kernel is checked. The wrap is on the Lab's one render registry, the instance the
// language server's tooltip is given.
const SIG_BLOCK = /<pre><code[^>]*>[\s\S]*?<\/code><\/pre>/g;
function signatureFix(md) { return md.replace(SIG_BLOCK, block => block.indexOf('<mark>') < 0 ? block : block.replace(/\$/g, '&#36;')); }
const signature = {
  id: 'scrip-highlight:signature',
  description: 'The signature tooltip of a Raku label writes its dollar signs as entities, so the Lab does not read a pair of them as math.',
  autoStart: true,
  requires: [IRenderMimeRegistry],
  activate: (app, rendermime) => {
    const create = rendermime.createRenderer.bind(rendermime);
    let logged = false;
    rendermime.createRenderer = mime => {
      const r = create(mime);
      if (mime !== 'text/markdown' || r.scripSignature) return r;
      r.scripSignature = true;
      const render = r.renderModel.bind(r);
      r.renderModel = model => {
        const md = model.data['text/markdown'];
        if (typeof md !== 'string' || md.indexOf('<mark>') < 0) return render(model);
        if (!logged) { logged = true; console.log('scrip-highlight: signature: a marked signature is rendered with its dollars as entities'); }
        return render(rendermime.createModel({ data: { ...model.data, 'text/markdown': signatureFix(md) }, metadata: model.metadata, trusted: model.trusted }));
      };
      return r;
    };
  }
};

export default [plugin, files, jump, pascalCells, outline, signature];
