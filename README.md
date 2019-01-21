# dotvim

```
cd ~
git clone git@github.com:ulfryk/dotvim.git  ~/.vim
ln -s ~/.vim/vimrc ~/.vimrc
cd ~/.vim
git submodule init
git submodule update
```

to update all plugins
```
git submodule foreach git pull origin master
```
