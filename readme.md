.tmux.conf is TMUX config file


.bashrc is a example env variables setting

`youcompleteme` vim plugins need extra setup. before that you need a vim8.2 build from source and so on, some info refer to .bashrc when multi user sys.

**IT IS REALLY RECOMMENDED TO READ SERIOUSLY README.MD IN `youcompleteme` repo to get a CORRECT setting.**


when multi user sys, you supposed to build any files with `--prefix=${HOME}/.install`, which install the binary and other files to you local user dir, such as cmake/gtags/vim...

-----

update@2022.6.23
after a huge of config operations about vim index in cpp working RECENTLY, i found out:
1. except LSP, gtas, ctags, those static syntax indexing is unreliably, (`get_reduce_workspace_in_bytes` not found in megbrain repo).
so, i highly recommended using leaderf with rg to find all string about what you inspect; using leaderf with Function to show up function list;
2. make you familiar with leaderf, nerdtree.

update@2022.7.30
1. install gdb from source via same path `configure --prefix` -> `make` -> `make install`, but it is required that install GMP in advance.
