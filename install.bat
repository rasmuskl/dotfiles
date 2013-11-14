@echo off
mklink /D %HOMEPATH%\vimfiles\bundle %~dp0vim\bundle
mklink %HOMEPATH%\_vimrc %~dp0vimrc
