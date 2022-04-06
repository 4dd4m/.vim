choco install ./packages/.config
copy ..\vimrc C:%HOMEPATH%\vimfiles\_vimrc
mkdir C:%HOMEPATH%\vimfiles
mkdir C:%HOMEPATH%\vimfiles\autoload
copy plug.vim C:%HOMEPATH%\vimfiles\autoload
vim -c "PlugInstall"
