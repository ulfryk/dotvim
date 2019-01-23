# dotvim

```
cd ~
git clone git@github.com:ulfryk/dotvim.git  ~/.vim
ln -s ~/.vim/vimrc ~/.vimrc
cd ~/.vim
git submodule init
git submodule update
```

To update all plugins:
```
git submodule foreach git pull origin master
```

## TypeScript

For TS related plugins: `npm install -g clausreinke/typescript-tools typescript`

## TODO:

- consider adding [YouCompleteMe](https://github.com/Valloric/YouCompleteMe)
