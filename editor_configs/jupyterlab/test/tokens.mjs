// tokens.mjs -- THE TOKENIZER'S PROOF, RUN BY NODE WITH NO BROWSER (CIO-81, CTO-597): node test/tokens.mjs, from corpus/editor_configs/jupyterlab.
// For each of the four grammars and one program of that language from the corpus, every line is tokenized with the stack the line before left. It fails when a
// line does not end within ten thousand steps, when a token's range is empty, out of order or past the line, or when the whole sample yields no comment
// token, no string token or no keyword token. It prints HIGHLIGHT_TOKENS ok languages=4, or one line a failure and exits 1; exit 2 when a file is absent.
import { createRequire } from 'node:module';
import { readFileSync, existsSync } from 'node:fs';
import { dirname, join } from 'node:path';
import { fileURLToPath } from 'node:url';
const here = dirname(fileURLToPath(import.meta.url)), corpus = join(here, '..', '..', '..');
const { tokenize, tag } = createRequire(import.meta.url)('../src/tokenizer.js');
const SAMPLES = [['snobol4', 'demos/snobol4/claws5/claws5.sno'], ['snocone', 'demos/snocone/claws5/claws5.sc'], ['icon', 'demos/icon/demo/family_icon.icn'], ['prolog', 'demos/prolog/family_prolog.pl']];
const bad = [];
let languages = 0;
for (const [name, sample] of SAMPLES) {
  const gp = join(here, '..', 'grammars', name + '.json'), sp = join(corpus, sample);
  if (!existsSync(gp) || !existsSync(sp)) { console.log('REFUSE(2): no ' + (existsSync(gp) ? sp : gp)); process.exit(2); }
  const grammar = JSON.parse(readFileSync(gp, 'utf8')), lines = readFileSync(sp, 'utf8').split('\n'), seen = {};
  let stack = ['main'], count = 0;
  lines.forEach((line, ln) => {
    const r = tokenize(grammar, line, stack);
    if (r.steps > 10000) bad.push(`${name}: line ${ln + 1} of ${sample} does not end within ten thousand steps`);
    let at = 0;
    for (const t of r.tokens) {
      if (t.end <= t.start || t.start < at || t.end > line.length) bad.push(`${name}: line ${ln + 1} of ${sample} holds the token ${t.start} to ${t.end} after ${at} in a line of ${line.length}`);
      at = t.end;
      const k = tag(t.scope);
      if (k) seen[k] = (seen[k] || 0) + 1;
      count++;
    }
    stack = r.stack;
  });
  for (const k of ['comment', 'string', 'keyword']) if (!seen[k]) bad.push(`${name}: ${sample} yields no ${k} token (${JSON.stringify(seen)})`);
  if (process.argv.includes('--show')) console.log(name, lines.length, 'lines', count, 'tokens', JSON.stringify(seen), 'end stack', stack.join('>'));
  languages++;
}
if (bad.length) { for (const b of bad.slice(0, 12)) console.log('HIGHLIGHT_TOKENS RED: ' + b); process.exit(1); }
console.log('HIGHLIGHT_TOKENS ok languages=' + languages);
