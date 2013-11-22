#!/bin/bash

script_path=$(cd `dirname ${0}`; pwd) 

ln -s $script_path/vimrc ~/.vimrc
ln -s $script_path/vim ~/.vim
ln -s $script_path/tmux.conf ~/.tmux.conf
