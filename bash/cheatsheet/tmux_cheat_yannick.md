## Wemux commands

**Server commands:**

`start`       | start server
----          | -------------
`attach`      | attach to existing server
`stop`        | stop server
`kick` *`user`* | kick a user

**Client commands:**

`mirror`  | attach in read only
---- | -------------
`pair`  | attach in pair mode

## Inside windows

**all prefixed by `<C-b>` :**

`c`  | new window
---- | -------------
`w`  | list windows
`f`  | find window
`,`  | rename  window
`&`  | kill window

## Inside sessions

**all prefixed by `<C-b>` :**

`s`  | list sessions
---- | -------------
`$`  | rename current session
`d`  | detach from session
`:`  | command prompt
`n`  | new session


## Inside panes

**all prefixed by `<C-b>` :**

`%`        | split vertically
----       | -------------
`"`        | split horizontally
`o`        | goto next pane
`{`, `}`   | exchange with prev/next pane
`x`        | kill pane
`z`        | toggle zoom on pane
`q`        | show pane numbers (type to select)
`<C-Up>`   | Make pane bigger (id. `<C-Down>`, `<C-Right>`, `<C-Left>`)
`!`        | Break pane into own window
`<Space>`  | Cycle default pane layouts
`<C-k>`    | Delete end of line (normal `<C-k>`)
`h`        | goto pane to left (id. `j`, `k`, `l`)


## Copy/pasting

`q`                 | exit copy mode
-----------         | ------
`<PageUp>`          | Enter copy mode and scroll up
`<C-b>[`            | Enter copy mode
`<Space>` / **`v`** | visual select
`<C-v>` | visual block select
`<Enter>` / **`y`** | copy
`<C-b>]`            | paste
`<C-b>y`            | copy tmux buffer to system buffer


# Copyright

This work is licensed under a 
[Creative Commons Attribution-ShareAlike 3.0 Unported License.](https://creativecommons.org/licenses/by-sa/3.0/)

