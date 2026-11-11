// index.js -- ONE JUPYTERLAB EXTENSION REGISTERS OUR LANGUAGES AND COLOURS THEM WITH ONE GENERIC TOKENIZER OVER THE CONVERTED SUBLIME GRAMMARS (CIO-81, CTO-597).
// A notebook cell finds its language by the mimetype the SCRIP kernel names in language_info (text/x-snobol4 and the like); a file in the text editor by its extension.
import { IEditorLanguageRegistry } from '@jupyterlab/codemirror';
import { LanguageSupport, StreamLanguage } from '@codemirror/language';
import { tokenize, tag } from './tokenizer.js';
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

// A stream parser whose state is the tokenizer's stack. A line is tokenized once, at its start, and handed out token by token; the stack moves at the line's end.
function streamParser(grammar) {
  return {
    startState: () => ({ stack: ['main'], next: ['main'], tokens: [], at: 0 }),
    copyState: s => ({ stack: s.stack.slice(), next: s.next.slice(), tokens: s.tokens, at: s.at }),
    token(stream, state) {
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
    },
    blankLine(state) { state.stack = tokenize(grammar, '', state.stack).stack; }
  };
}

const plugin = {
  id: 'scrip-highlight:plugin',
  description: 'Syntax colouring for SNOBOL4, Snocone, Icon and Prolog cells of the SCRIP kernel.',
  autoStart: true,
  requires: [IEditorLanguageRegistry],
  activate: (app, languages) => {
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
