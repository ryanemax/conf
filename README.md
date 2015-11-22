# Ryn's dotfiles info
- Private use for my baby archlinux.
- Also compatible for my girl XPS13/Win10/msys2.

# Features

## Oh-My-Zsh dotfiles
``` bash
## both install
pacman -S zsh
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

## for arch with chsh
chsh -s /bin/zsh
## for win without chsh
vim C:\msys64\xxx.bat
:%s/bash/zsh/g
```
``` lua
#ZSH_THEME="robbyrussell"

#yaourt -S python2-powerline-git
#ZSH_THEME="agnoster"
#ZSH_THEME="Monokai"
ZSH_THEME="bullet-train"
```
## VIM dotfiles

- Vundle
- NerdTree
- YouCompleteMe
``` bash
## for arch
pacman -S python2 cmake
cd .vim/bundle/YouCompleteMe
./install.xx #编译安装
## for msys2
https://github.com/Valloric/YouCompleteMe/wiki/Windows-Installation-Guide
http://www.cnblogs.com/tracyone/p/4735411.html
$ pacman --needed -Sy bash pacman pacman-mirrors msys2-runtime
执行完毕之后，关闭Shell，重新打开。
$ pacman -Su #更新其它组件到最新..
# 安装以下东西..
pacman -Sy
pacman -S  mingw-w64-x86_64-gcc mingw-w64-x86_64-gdb mingw-w64-x86_64-make tmux zsh git  mingw64/mingw-w64-x86_64-cmake winpty-git 
# 解释下，第一个是编译器，第二个是调试器，第三个工程管理工具make，后面两个是文本三巨头之二，在后来是版本管理神器,cmake则是很受欢迎的新一代工程管理工具也是我们编译YCM需要的工具，最后一个是解决mintty下有些工具卡死没有输出的情况的工具。
# mingw-w64相关默认安装/mingw64下，所以在MSYS2Shell下默认找不到gcc命令的，你可以将相关路径添加到诸如/etc/profile，.bashrc和.zshrc这样的文件中，也可以在win下面改Path变量。
# 但更直接的方式在打开前面提到的快捷方式MinGW-W64 win64 Shell，注意别看错打开win32的shell了。
```
- Ultisnips
- Golang Env
- Markdown Env
- Multi Concurs

## shell scripts

- fix arch screen
- fix arch wifi
- fix arch brightness

# Archlinux deploy
wait for add

# XPS13/Win10/msys2 deploy
wait for add
