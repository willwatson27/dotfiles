Installing plugins
	Add new plugin to ~/.tmux.conf with set -g @plugin '...'
	Press prefix + I (capital i, as in Install) to fetch the plugin.

Shortcuts
	tmux new -s mysession
	tmux ls
	tmux attach -t foo

	Prefix - Ctrl A

	Prefix s		show sessions
	Prefix $ 		rename session
	Prefix a -t foo	attach to session by name
	Prefex d		detach from session

	Prefix x		close pane
	Prefix %		Horizontal Split
	Prefix '		Vertical Split

	Prefix c 		create window
	Prefix , 		rename window
	Prefix &		close window
	Prefix n/p		next/prev window
	Prefix [0-9]	select window
