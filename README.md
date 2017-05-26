`fish` configuration files
--------------------------

Configuration files for the [fish shell](https://github.com/fish-shell/fish-shell): aliases, functions, a nice konsole color profile. Run
```bash
mkdir $HOME/code
cd $HOME/code
git clone https://github.com/mcaceresb/fishconfig
fish once.fish
ln -s $HOME/code/fishconfig/ciembor.colorscheme     $HOME/.local/share/konsole/ciembor.colorscheme
ln -s $HOME/code/fishconfig/ciembor-vim.colorscheme $HOME/.local/share/konsole/ciembor-vim.colorscheme
ln -s $HOME/code/fishconfig/config.fish             $HOME/.config/fish/config.fish
ln -s $HOME/code/fishconfig/functions               $HOME/.config/fish/functions
```
