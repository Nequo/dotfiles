# Nequo's Dotfiles

This is a general document with tweaks and things I do when installing on a new machine. Im currently on Pop!OS.

## Fish shell
Install the spacefish theme.
Set the colors to be the same as terminal:
```
set -U fish_color_autosuggestion      brblack
set -U fish_color_cancel              -r
set -U fish_color_command             brgreen
set -U fish_color_comment             brmagenta
set -U fish_color_cwd                 green
set -U fish_color_cwd_root            red
set -U fish_color_end                 brmagenta
set -U fish_color_error               brred
set -U fish_color_escape              brcyan
set -U fish_color_history_current     --bold
set -U fish_color_host                normal
set -U fish_color_match               --background=brblue
set -U fish_color_normal              normal
set -U fish_color_operator            cyan
set -U fish_color_param               brblue
set -U fish_color_quote               yellow
set -U fish_color_redirection         bryellow
set -U fish_color_search_match        'bryellow' '--background=brblack'
set -U fish_color_selection           'white' '--bold' '--background=brblack'
set -U fish_color_status              red
set -U fish_color_user                brgreen
set -U fish_color_valid_path          --underline
set -U fish_pager_color_completion    normal
set -U fish_pager_color_description   yellow
set -U fish_pager_color_prefix        'white' '--bold' '--underline'
set -U fish_pager_color_progress      'brwhite' '--background=cyan'
```

add `export VIRTUAL_ENV_DISABLE_PROMPT=1` so that it doesn't show twice with the spacefish theme

## Neovim
Download the appimage and move to /usr/local/bin/nvim. chmod +x that and now you have the latest version running through the command nvim. Make sure /usr/local/bin is in your $PATH.

Install vim plug:
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

Install the python 3 package pynvim for ncm2.

## Kitty
I have started using kitty as my terminal emulator as it supports font ligatures and is just snappier than the default gnome terminal. To make kitty the default terminal that opens with the shortcut Windows+T:
``` bash
sudo update-alternatives --install /usr/bin/x-terminal-emulator x-terminal-emulator /usr/local/bin/kitty 50
sudo update-alternatives --config x-terminal-emulator
```
Add fish as default shell: shell fish

## Python packages

for petlib, need to install libssl-dev

# Tmux
Install tpm: 
```bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```
Link the tmux config file:
```bash
ln -s ~/.config/tmux/tmux.conf ~/.tmux.conf
```

## Font
I love the ligatures from Fira Code but I find Iosevka easier for me to read. Someone used Ligaturizer to patch Iosevka with Fira's ligatures. Download [here](
https://github.com/be5invis/Iosevka/issues/248#issuecomment-414131620). I then patched the font using the Nerd Fonts patcher.
