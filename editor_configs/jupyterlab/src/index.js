// index.js -- ONE JUPYTERLAB EXTENSION REGISTERS OUR LANGUAGES AND COLOURS THEM WITH ONE GENERIC TOKENIZER OVER THE CONVERTED SUBLIME GRAMMARS (CIO-81, CTO-597).
// THE ONE KERNEL, SCRIP, names its language scrip: each of its cells is coloured by the cell's own language (its first line, two percent signs and a name; else SNOBOL4).
// The four languages are registered by themselves too, for a file in the text editor (by its extension) and for a kernel a user starts with one default language.
import { IEditorLanguageRegistry } from '@jupyterlab/codemirror';
import { LanguageSupport, StreamLanguage } from '@codemirror/language';
import { tokenize, tag, cellLanguage } from './tokenizer.js';
import snobol4 from '../grammars/snobol4.json';
import snocone from '../grammars/snocone.json';
import icon from '../grammars/icon.json';
import prolog from '../grammars/prolog.json';

const LANGUAGES = [
  { name: 'snobol4', displayName: 'SNOBOL4', mime: 'text/x-snobol4', extensions: ['sno', 'spt', 'inc'], grammar: snobol4 },
  { name: 'snocone', displayName: 'Snocone', mime: 'text/x-snocone', extensions: ['sc'], grammar: snocone },
  { name: 'icon', displayName: 'Icon', mime: ['text/x-icon', 'text/x-unicon'], extensions: ['icn'], grammar: icon },
  { name: 'prolog', displayName: 'Prolog', mime: 'text/x-prolog', extensions: ['pro'], grammar: prolog }
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
  description: 'Syntax colouring for the cells of the SCRIP kernel: SNOBOL4, Snocone, Icon and Prolog, by each cell.',
  autoStart: true,
  requires: [IEditorLanguageRegistry],
  activate: (app, languages) => {
    try {
      languages.addLanguage({ name: 'scrip', displayName: 'SCRIP', mime: 'text/x-scrip', extensions: [], load: async () => new LanguageSupport(StreamLanguage.define(scripParser({ snobol4, snocone, icon, prolog }))) });
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

export default plugin;
