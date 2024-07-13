function! vim_commands_plugin#openCheatSheet()
	" Path to the user's customized cheat sheet
	let l:user_cheat_sheet = expand('$HOME/cheatsheet/vim-commands.md')

	" Check if the user's cheat sheet exists
	if filereadable(l:user_cheat_sheet)
			let l:cheat_sheet = l:user_cheat_sheet
	else
		" get the plugin directory path
		let l:plugin_dir = expand('<sfile>:p:h:h')
		" Construct the path to the cheat sheet
		let l:cheat_sheet = l:plugin_dir . '/doc/vim-commands.md'
	endif

	" Open the markdown file in a new buffer
	execute 'edit' l:cheat_sheet
endfunction
