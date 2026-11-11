// tokenizer.js -- ONE GENERIC TOKENIZER OVER A CONVERTED SUBLIME GRAMMAR (CIO-81, CTO-597). Plain JavaScript, no import, CommonJS, so Node and the JupyterLab bundle read the same file.
//
//   tokenize(grammar, line, stack) -> { tokens: [{ start, end, scope }], stack }
//
// grammar is one JSON file of ../grammars (util_sublime_to_highlight_grammar.py writes them); stack is a list of context names, [ 'main' ] at the start of a
// document; the stack returned is the state the next line starts in. A token's scope is the scopes that hold it, outermost first, separated by blanks: the
// meta scopes of the contexts on the stack, then the rule's scope or its capture's. At each position the top context's rules are tried in order and the
// first that matches wins. A rule that matches nothing is taken only when it changes the stack, and only once at a position, so a line always ends. A
// character no rule matches takes the scopes of the stack alone. A line is matched with its newline, as Sublime does, and no token reaches into it. A pop
// that would empty the stack leaves main, as Sublime does (the SNOBOL4 syntax sets its way from main to a comment and pops back).
'use strict';
function compiled(grammar) {
  if (!grammar.$rx) {
    const rx = {};
    for (const name of Object.keys(grammar.contexts)) rx[name] = grammar.contexts[name].rules.map(r => new RegExp(r.match, 'dmy'));
    Object.defineProperty(grammar, '$rx', { value: rx, enumerable: false });
  }
  return grammar.$rx;
}
function held(grammar, stack, bare) {
  const out = [];
  stack.forEach((name, i) => {
    const c = grammar.contexts[name];
    if (c.meta_scope) out.push(c.meta_scope);
    if (c.meta_content_scope && i < stack.length - bare) out.push(c.meta_content_scope);
  });
  return out;
}
function tokenize(grammar, line, stack) {
  const rx = compiled(grammar), text = line + '\n', n = line.length, tokens = [];
  let st = stack.slice(), pos = 0, steps = 0, stuck = -1;
  const emit = (a, b, scopes) => {
    if (a >= n || b <= a) return;
    const scope = scopes.filter(Boolean).join(' '), last = tokens[tokens.length - 1];
    if (last && last.end === a && last.scope === scope) last.end = Math.min(b, n);
    else tokens.push({ start: a, end: Math.min(b, n), scope });
  };
  while (pos <= n && ++steps <= 10000) {
    const top = st[st.length - 1], rules = grammar.contexts[top].rules;
    let hit = false;
    for (let i = 0; i < rules.length && !hit; i++) {
      const re = rx[top][i], rule = rules[i];
      re.lastIndex = pos;
      const m = re.exec(text);
      if (!m) continue;
      const moves = rule.push || rule.set || rule.pop;
      if (m[0].length === 0 && (!moves || stuck === pos)) continue;
      let next = st, base;
      if (rule.pop) { base = held(grammar, st, Math.min(rule.pop, st.length)); next = st.slice(0, Math.max(0, st.length - rule.pop)); }
      else if (rule.push || rule.set) {
        const add = rule.push || rule.set;
        next = (rule.set ? st.slice(0, -1) : st).concat(add);
        base = held(grammar, next, add.length);
      } else base = held(grammar, st, 0);
      if (m[0].length) {
        const paint = new Array(m[0].length).fill(rule.scope || '');
        for (const g of Object.keys(rule.captures || {}).map(Number).sort((a, b) => a - b)) {
          const span = m.indices[g];
          if (span) for (let k = span[0]; k < span[1]; k++) paint[k - pos] = rule.captures[g];
        }
        for (let k = 0, j; k < paint.length; k = j) { for (j = k + 1; j < paint.length && paint[j] === paint[k]; j++) { } emit(pos + k, pos + j, base.concat(paint[k])); }
      }
      stuck = m[0].length === 0 ? pos : -1;
      st = next.length ? next : ['main'];
      pos += m[0].length;
      hit = true;
    }
    if (!hit) { emit(pos, pos + 1, held(grammar, st, 0)); pos++; stuck = -1; }
  }
  return { tokens, stack: st, steps };
}
// The CodeMirror tag name of a token: a comment or a string that holds the token wins, outermost first; else the innermost scope by its first words.
const TAGS = [['comment', 'comment'], ['string', 'string'], ['constant.numeric', 'number'], ['constant.character.escape', 'escape'], ['constant', 'atom'], ['keyword.operator', 'operator'],
  ['keyword', 'keyword'], ['storage', 'keyword'], ['entity.name', 'def'], ['support.function', 'builtin'], ['support', 'builtin'], ['variable.language', 'variableName.special'],
  ['variable', 'variableName'], ['punctuation', 'punctuation'], ['invalid', 'invalid']];
function tag(scope) {
  const parts = scope ? scope.split(' ') : [];
  for (const p of parts) if (p.startsWith('comment')) return 'comment'; else if (p.startsWith('string')) return 'string';
  for (let i = parts.length - 1; i >= 0; i--) for (const [head, name] of TAGS) if (parts[i] === head || parts[i].startsWith(head + '.')) return name;
  return null;
}
// THE ONE KERNEL'S CELLS (Lon 2026-11-11: "there is only ONE kernel. Its name is SCRIP and handle all the languages."): a cell whose first line is two percent signs and a
// language is that language's cell, as the kernel reads it; any other cell is SNOBOL4. name is the grammar's name, or null for a language with no grammar yet.
const GRAMMAR_OF = { snobol4: 'snobol4', snobol: 'snobol4', spitbol: 'snobol4', snocone: 'snocone', icon: 'icon', unicon: 'icon', prolog: 'prolog' };
function cellLanguage(firstLine) {
  const m = /^%%[ ]*([A-Za-z0-9_]+)/.exec(firstLine);
  return m ? { name: GRAMMAR_OF[m[1].toLowerCase()] || null, tagged: true } : { name: 'snobol4', tagged: false };
}
module.exports = { tokenize, tag, cellLanguage };
