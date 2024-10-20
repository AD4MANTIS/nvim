# Vim motions

`:Tutor`

## Code Navigation

| Motion  | Description                   |
| ------- | ----------------------------- |
| w       | Next beginning of word        |
| e       | Next beginning of word        |
| b       | Previous beginning of word    |
| 0       | Start of line                 |
| ^       | First non whitespace of line  |
| $       | End of line                   |
| gg      | First Line                    |
| G       | Last Line                     |
| f[char] | Next occurrence of [char]     |
| F[char] | Previous occurrence of [char] |
| /       | Next occurrence of text       |
| %       | Matching character            |
| \*      | Next instance in file         |
| n       | Next search result            |
| N       | Previous search result        |
| i[char] | inside textobject             |
| a[char] | Around textobject             |
| gd      | Goto definition               |
| gD      | Goto Declaration              |
| gI      | Goto Implementation           |
| gr      | Find References               |
| za      | Toggle Folding under Cursor   |

## Editing

| Operator            | Description                       |
| ------------------- | --------------------------------- |
| r                   | Replace single character          |
| d                   | Delete                            |
| c                   | Change                            |
| i                   | Insert                            |
| a                   | Append                            |
| A                   | Append at end of line             |
| o                   | Insert at new li ne after current |
| y                   | Yank (Copy)                       |
| v                   | Visual Mode                       |
| \<c-v>              | Block Mode                        |
| .                   | Repeat Action                     |
|                     |                                   |
| Surround            | gs                                |
| gsa\[motion]\[char] | Add surrounding                   |

## UI Navigation

| Cmd          | Description                      |
| ------------ | -------------------------------- |
| \<leader>vw  | Close buffer                     |
| \<leader>vs  | Save buffer                      |
| \<leader>vS  | Save all                         |
| <c-^>        | Last buffer                      |
| \<leader>vö  | Toggle horizontal split Terminal |
| \<leader>tT  | Toggle horizontal split Terminal |
| \<leader>tt  | Toggle float Terminal            |
| \<leader>tf  | Select Terminal                  |
| \<leader>tn  | Create new Terminal              |
| \<esc>\<esc> | Leave Terminal Mode              |
| \<leader>e   | Toggle file explorer             |
| H            | Previous buffer                  |
| L            | Next buffer                      |
| \<c-H>       | Go to left window                |
| \<c-L>       | Go to right window               |
| \<c-J>       | Go to lower window               |
| \<c-K>       | Go to upper window               |
| \<leader>,   | Search open buffers              |
| \<leader>qq  | Quit session                     |
| \<leader>sk  | Search Key Maps                  |
| \<leader>sc  | Command History                  |
| \<leader>sC  | Search Commands                  |

## Git

`<leader>gg` to open Git explorer

| Cmd      | Description         |
| -------- | ------------------- |
| Global   |
| f        | Fetch               |
| c        | Commit              |
| p        | Pull                |
| P        | Push                |
| \<esc>   | Go back             |
|          |                     |
| Files    | 1                   |
| a        | Stage / unstage all |
| \<space> | Toggle staged       |
| d        | Discard change      |
| s        | Stash all changes   |
| S        | View stash options  |
|          |                     |
| Branches | 2                   |
| \<space> | Checkout            |
| \<enter> | Show commits        |
| n        | New branch          |
|          |                     |
