vim.html: cheat.css vim_cheat_yannick.md Makefile
	pandoc vim_cheat_yannick.md -f markdown+pipe_tables+hard_line_breaks -t html5 --section-div -H cheat.css -o vim.html
	sed -i "s/<code>\. /<code>  /g" vim.html
