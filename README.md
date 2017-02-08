`fish` configuration files
--------------------------

Configuration files for the [fish shell](github.com/fish-shell/fish-shell): aliases, functions, a nice konsole color profile. Run
```bash
mkdir $HOME/lib
cd $HOME/lib
git clone github.com/mcaceresb/fishconfig
fish once.fish
ln -s $HOME/lib/fishconfig/ciembor.colorscheme $HOME/.local/share/konsole/ciembor.colorscheme
ln -s $HOME/lib/fishconfig/config.fish         $HOME/.config/fish/config.fish
ln -s $HOME/lib/fishconfig/functions           $HOME/.config/fish/functions
```
