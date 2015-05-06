vim.html: cheat.css vim_cheat_yannick.md Makefile
	pandoc vim_cheat_yannick.md -f markdown+pipe_tables -t html5 --section-div -H cheat.css -o vim.html
	sed -i "/DELETEME/d" vim.html
	sed -i "s/VIM CHEATSHEET/\\&nbsp;/g" vim.html
	sed -i "s/<code>\. /<code>  /g" vim.html
