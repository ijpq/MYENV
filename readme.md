|file|note|location|cmd|
|---|---|---|---|
|.tmux.conf| TMUX configuration file| `/home/$USER/`| install tmux first|
|.bashrc | env file| `/home/$USER/`|read in detail|

|require build from source| how to get src|note|prerequirement|
|---|---|---|---|
|cmake|https://github.com/Kitware/CMake/releases| untar it, set prefix to configure and make + make install||
|gmp|https://gmplib.org/#DOWNLOAD|see readme||
|gdb|https://www.sourceware.org/gdb/download/|untar it, set prefix to configure and make + make install|gmp|
|gtags(global)|https://www.gnu.org/software/global/download.html|see readme, gtags used by leaderf, see vim config||
|vim9|https://github.com/vim/vim/tags|configure setting may more complex, please check python3+ enable after make install|python|

|required by vim|src|note|
|---|---|---|
|fonts for nerdtree|https://github.com/ryanoasis/nerd-fonts|clone this repo to local PC, then install fonts via scripts(Option 3: Install Script)|
|wakatime|https://github.com/wakatime/vim-wakatime|using command to input api key|
|others||see doc in vim plugin repo carefully|


-----DEPRECATED-----

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
