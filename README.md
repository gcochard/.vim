# .vim
My .vim directory, as a git repo with all other github projects as submodules.

## Installation
```bash
cd ~/
git clone https://github.com/gcochard/.vim.git .vim
ln -s .vim/vimrc .vimrc
cd .vim
git submodule update --init --recursive
cd bundle/YouCompleteMe
./install.sh
```
