# vim-commands

A vim plugin to provide a quick cheat sheet for common vim commands rather than
going online to search for the specific commands.

## Demo

Sometimes you can forgot how to do a specific thing in vim(we all been there :innocent:).


https://github.com/user-attachments/assets/d4f41ca3-17f9-4ae5-b9bd-3ada7ae98ac5


## Installation

- Using **Vim-Plug**
  Add the following to your `.vimrc`:

```bash
Plug 'https://github.com/Var7600/vim-commands'
```

- then run `:PlugInstall` in Vim.

- Using **Pathogen**

```bash
git clone https://github.com/Var7600/vim-commands ~/.vim/bundle/vim-commands
```

- Using **Vundle**

```bash
Plugin 'Var7600/vim-commands'
```
- then run `:PlugInstall` in Vim.

## Usage

- to open the cheat sheet , simply type

```bash
:Shortcuts
```
## SEARCH BY SECTION
the cheat sheet contents differents sections that you can search for **ALL SECTION ARE IN UPPERCASE**
-  **Basic** (vim commands)
-  **NAVIGATION** (move,jump,position in file)
-  **JUMPS** (location,last modified position,...)
-  **DELETION** (delete character,word,line,until cursor,until end line)
-  **NORMAL MODE -> INSERT MODE**(to pass from normal mode to insert mode)
-  **CUT,COPY&PASTE** (cut,copy and paste portions of text)
-  **SEARCH** (search word,pattern,...)
-  **REPLACE** (replace occurrences by another) 
-  **CASE** (modify case of a character,word,entire line,...)
-  **TABS** (creates,navigate,move,close tabs)
-  **SPLIT** (split horizontally,vertically,switch panes,resize,...)
-  **BUFFERS** (create,navigate,list,close buffer)
-  **FILE EXPLORER** (built-in-file Explorer)
-  **SHELL** (using shell commands in vim)
-  **ALIGNMENT** (align lines for better clarity)
-  **READ AND WRITE FILES** (insert the content of a file into another,export portions,...)
-  **MARKS** (marks section of a file,line numbers,...)
-  **ABBREVATIONS** (define your own abbreviations)
-  **TEXT INDENTATION** (indent text for readability,...)
-  **CTAGS** (if installed,allow quick access across files for definitions and functions)

## Customization

You can place your own cheat sheet at `$HOME/cheatSheet/vim-commands.md`.The plugin will
prioritize this file over the default one in `vim-commands/doc/vim-commands.md`.

## Contributing

Contributions are welcome! Please open an issue or submit  a pull request.

## License

MIT License.
