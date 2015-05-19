## Pane Plugins

`<F2>`             | change numbering type
-------------      | -------------
`<F5>`             | GundoToggle
TagBar  (F8)       | 'p' to focus
NerdTree&nbsp;(F7) | 'cd' for CWD
&nbsp;             | 'm' for file menu
`<S-F7>`           | highlight buffer in NerdTree

## Unite

`<C-j>, <C-k>` | next / prev
-------------  | -------------
`<C-v>`        | vsplit
`<leader>f`    | files
`<leader>b`    | buffers
`<leader>t`    | tags
`<leader>o`    | outline
`<leader>/`    | search
`<leader>r`    | resume
`<leader>q`    | close unite
`[s, ]s`       | prev/next unite result

## Scrolling

`zt`             | make cursor be on top
---------        | -----------
`zb`             | make cursor be at bottom
`zz`             | make cursor be center
`<C-y>`, `<C-e>` | scroll line wise

## Navigation

`<C-]>`          | goto "tags" definition
---------------  | -------------
`gd`             | goto first occurence in file
`<C-c>g`         | goto "py-rope" definition
`<C-o>`, `<C-i>` | goto prev/next cursor location
`g;`             | goto last edited position
`<C-f>`, `<C-b>` | page down/page up

## Folds

`zi`        | toggle folding on/off
---------   | -----------
`zj` / `zk` | up/down a fold (even expanded)
`za`        | toggle current fold
`zc`        | close containing fold
`zM`        | close all folds
`zv`        | open folds to reveal cursor
`zMzv`      | close all folds outside cursor
`zR`        | reveal all folds


## Splits (`<C-w>`)

`=`       | resize to equal
--------- | -----------
`H`       | move left (idem J/K/L)
`+`, `<`  | higher/larger split (idem `-`, `>`)
`o`       | only this split (`:only`)
`x`       | close buff but not split

## Search

`:noh` / **`<C-n>`** | no highlight
-------------        | -------------
`\v`                 | following regex is very magic.  `:%s/\v(a|b)/c/`
`\%V`                | what follows is inside visual area `/\%Vhere`
`\zs`, `\ze`         | start/end marks for replace `%s/…\zsOLD\ze…/NEW/`

`<leader>vo`  | EasyGrep options
------------- | -------------
`<leader>vv`  | grep word under cursor
`<leader>vr`  | replace word under cursor


## Quickfix and location
replace 'c' and 'q' by 'l' for location

`:cn` / **`]q`**       | next error
---------------------- | -------------
`:cp` / **`[q`**       | prev error
`:cfir(st)` / **`[Q`** | first quickfix line
`:cnf`                 | first error in next file
`:cf`                  | load error file on first error
`:ccl(ose)`            | close quickfix
`:cw`                  | open if not empty

## Various

`<C-o>`               | insert normal mode
---------------       | -------------
`<C-r><C-w>`          | copy word from buffer to :ex
`gv`                  | reselect last visual select
`o`                   | go to other end of visual
`gq`                  | reflow (+move or in visual)
`gf`                  | open file under cursor
`ga`                  | show ascii&hex under cursor
`g8`                  | show utf8 under cursor
`guu`                 | lower case line (idem gUU)
`~`                   | change letter case
`ci(`, `ca(`          | change inside/around ()
`:sort` / `<leader>s` | sort selection
`:sort i`             | sort selection (insensitive)
`q:`                  | open ex history
`q/`                  | open search history
`<C-l>`               | Redo coloring
`%%`                  | expanded to file path in :ex
`:Sudow`              | write file as root
`:lcd`                | set CWD for current window only
`<leader>cd`          | lcd to current file
`<leader>md`          | mkdir for current file
`<C-g>g`              | skip all closing delimiter (delimitMate)
`.    f`              | skip next closing delimiter
`[<space>`            | blank line above (idem `]`)
`[e`, `]e`            | exchange line w/ next/prev

## Fugitive

- Gread, Gwrite, Gremove, Gdiff
- Gco(mmit) --amend
- Gedit branchname:% (% or filename)

`Gmove`       | move file relative to repo root
------------- | -----------
`Gcd`, `Glcd` | cd/lcd to git repo root
`]n`, `[n`    | next/prev conflict

in Gstatus:      | &nbsp;
-------------    | -----------
`dv`             | vertical diff (D for diff)
`C`              | commit
`ca`             | commit --amend
`-`              | add/reset
`<C-n>`, `<C-p>` | next/prev file

## Surround

opening ( adds a space, closing ) does not

`cs"'`    | change surrounding " by '
--------- | -----------
`ds"`     | delete surrounding "
`ysaw"`   | surround word with "
`S"`      | surround visual selection by "


## Completion

`<C-x><C-l>`  | whole lines
------------- | -------------
`.       n `  | words
`.       ] `  | tags
`.       f `  | files

## Registers

`<C-r>+reg` | Paste in :ex or insert mode
---------   | -----------
`_`         | black hole
`+`         | clipboard
`*`         | middleclick
`"`         | unnamed / default
`0`         | latest yank
`gp`, `gP`  | places cursor after pasted

## Diff

`:diffupdate` | reparse
------------- | -----------
do            | `:diffget` (not in visual mode)
dp            | `:diffput` (not in visual mode)
`]c / [c`     | next/prev diff

## Python

`<leader>p` | insert ipdb
---------   | -----------
`<C-c>rr`   | rename under cursor
`:TestFile` | nosetests on current file



# Copyright

This work is licensed under a 
[Creative Commons Attribution-ShareAlike 3.0 Unported License.](https://creativecommons.org/licenses/by-sa/3.0/)

