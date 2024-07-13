"Title:	vim-commands
"Description: A plugin to provide a quick vim cheat sheet reference
"Created: 8 july 2024
"Maintainer: Var7600 https://github.com/Var7600/vim-commands

"Prevent the plugin from being loaded multiple times.if the loaded
"variable exists,do nothing more. Otherwise, assign the loaded
"variable and continue running this instance of the plugin.

if exists("g:loaded_vim_commands_plugin")
	finish
endif
let g:loaded_vim_commands_plugin = 1

command! -nargs=0 Shortcuts call vim_commands_plugin#openCheatSheet()
