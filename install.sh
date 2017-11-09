#!/bin/bash

script_path=$(cd `dirname ${0}`; pwd) 

ln -s $script_path/nvim ~/.config/nvim
ln -s $script_path/tmux.conf ~/.tmux.conf
