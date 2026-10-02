| SYNTAX TEST "Packages/User/SCRIPtix.sublime-syntax"

A SCRIPtix document is Markdown prose around fenced programs.
| <- meta.paragraph.markdown

```SNOBOL4
| <- punctuation.definition.raw.code-fence.begin.markdown
|  ^^^^^^^ constant.other.language-name.markdown
        OUTPUT = 'hi'
|       ^^^^^^ source.sno markup.raw.code-fence.snobol4.markdown-gfm
END
```
| <- punctuation.definition.raw.code-fence.end.markdown

```SNOBOL4
*  a comment line first: the embed must survive the syntax's end-of-line pop
|  ^ source.sno comment.line.semi-colon.sno
        OUTPUT = 'second line'
|       ^^^^^^ source.sno markup.raw.code-fence.snobol4.markdown-gfm
*  another comment
END
| <- source.sno keyword.control.sno
```
| <- punctuation.definition.raw.code-fence.end.markdown

```Icon
|  ^^^^ constant.other.language-name.markdown
procedure main()
| <- source.icn markup.raw.code-fence.icon.markdown-gfm
    write("hi");
end
```
| <- punctuation.definition.raw.code-fence.end.markdown

```Prolog
:- initialization(main).
| <- source.pl markup.raw.code-fence.prolog.markdown-gfm
```

```Rebus
x := 1
| <- markup.raw.code-fence.markdown-gfm - source
```

```SCRIPtix
| <- punctuation.definition.raw.code-fence.begin.markdown
not a language SCRIP reads: a plain raw block
| <- markup.raw.code-fence.markdown-gfm - source
```
