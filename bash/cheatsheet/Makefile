tmux.html: cheat.css tmux_cheat_yannick.md Makefile
	pandoc tmux_cheat_yannick.md -f markdown+pipe_tables+hard_line_breaks -t html5 --section-div -H cheat.css -o tmux.html
	sed -i "s/<code>\. /<code>  /g" tmux.html
