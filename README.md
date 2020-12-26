# Vim

## Instalación de Vim (GNU/Linux Debian)
```sh
sudo apt-get install build-essential cmake python-dev git
sudo apt-get install vim vim-nox
```

## Configuración de plugins
Para MacOS descomente la línea que contiene la asignación de la variable *NERDTreeNodeDelimiter*
```sh
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
mv vimrc ~/.vimrc
vim -c PluginInstall
cd ~/.vim/bundle/youcompleteme
./install.sh
```

## Instalación de íconos
Para la configuración de íconos en MacOS establezca la fuente de la terminal en *Hack Regular Nerd Font Complete**
```sh
git clone https://github.com/ryanoasis/nerd-fonts.git
cd nerd-fonts
./install
```
