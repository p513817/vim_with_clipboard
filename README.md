# Install vim with clipboard

# Workflow

1. Check is vim supported clipboard

	```bash
	vim --version | grep clipboard	
	```

	if supported, it will show '+' not '-'

2. Install new one if your vim is not supported

	Generally, only need to install `vim-gnome`, but I advise to remove all packages of vim in case something went wrong.

	1. Remove all packages of vim:
		
		It will generate `vim_pkgs.txt` which include all packages of vim and there is a double check before remove all.
		```bash
		./remove_vim.sh
		```

	2. Install newest vim and vim-gnome:

		There is two way to install vim:

		1. Build from source (not finished):

		```bash
		./build_from_source.sh
		```

		2. Install from PPA:
		
		```bash
		./install_newest_from_ppa.sh
		```