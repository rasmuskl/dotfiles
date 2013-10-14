#!/bin/bash

script_path=$(cd `dirname ${0}`; pwd) 

ln -s $script_path/vim/.vimrc ~/.vimrc
ln -s $script_path/vim/.vim ~/.vim
