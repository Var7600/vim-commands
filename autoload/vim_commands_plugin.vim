function! vim_commands_plugin#openCheatSheet()
	" Path to the user's customized cheat sheet
	let l:user_cheat_sheet = expand('$HOME/cheatsheet/vim-commands.md')

	" Check if the user's cheat sheet exists
	if filereadable(l:user_cheat_sheet)
			let l:cheat_sheet = l:user_cheat_sheet
	else
		"  plugin directory path
		let l:file_path = "$HOME/.vim/plugged/vim-commands/doc/vim-commands.md"

		if filereadable(l:file_path)
				let l:cheat_sheet = l:file_path
		else
			let l:cheat_sheet = "$HOME/.vim/bundle/vim-commands/doc/vim-commands.md"
		
		endif

	endif

	" Open the markdown file in a new buffer
	execute 'edit' l:cheat_sheet
endfunction
