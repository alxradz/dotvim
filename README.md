Vim configuration
===

Introduction
---

This is my vim configuration. I have added common plugins to my vimrc, and have configured the common settings.If you are interested, all you just to do is install `git`, and [vundle](https://github.com/gmarik/Vundle.vim), then clone my repository to  your home directory. and rename `vimrc` file to `.vimrc`.Finally, put the `.vimrc` file to your home directory,namely `~/`.

More details, please refer to my vimrc file.

How to use?
---

### 1. Clone my repository to your home directory.

```
$git clone --recursive https://github.com/alxradz/dotvim.git ~/.vim
```	

### 2. Create soft link to `vimrc`.

```
$ln -s ~/.vim/vimrc ~/.vimrc
```

### 3. Install plugins via vundle.

open vim, and run `:BundleInstall` to install the specified plugins in the `~/.vimrc` file.After completed,compile the YCM(YouCompleteMe) plugin.Before compiling, you should have `cmake` and `python` installed.

Install  development tools and CMake: 

    Ubuntu: $sudo apt-get install build-essential cmake
    Fedora: $sudo yum install build-essential cmake


Make sure you have Python installed:

    Ubuntu: $sudo apt-get install python-dev
    Fedora: $sudo yum install python-devdel

Compile `YouCompleteMe` plugin:

    $cd ~/.vim/bundle/YouCompleteMe/third_party/ycmd
    $./build.sh --clang-completer

About more details,please refer to [YouCompleteMe](https://github.com/Valloric/YouCompleteMe). 

