echo "installing wayland and other packages for it with some additional packages "
sudo pacman -Syy alacritty xorg-xwayland xorg-xlsclients qt5-wayland glfw-wayland

echo "installing yay and git"
sudo pacman -Syy --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si

echo "installing bspwm"
yay -Syy bspwm polybar sxhkd eww dunst rofi lsd jq checkupdates-aur playerctl mpd ncmpcpp mpc picom-arian8j2-git xtitle  betterlockscreen ttf-jetbrains-mono nerd-fonts-jetbrains-mono ttf-terminus-nerd ttf-inconsolata ttf-joypixels nerd-fonts-cozette-ttf scientifica-font feh maim pamixer libwebp webp-pixbuf-loader xorg-xkill papirus-icon-theme  tmux wget neovim vim powerline python-pip thunar bat zoxide lsd tmux qt5ct qt6ct zsh xf86-video-qxl extra/qemu-audio-spice extra/spice community/spice-protocol community/spice-vdagent 

echo "working on ricing"
git clone --depth=1 https://github.com/expandpi/bspwm.git
# ⚠️ Backuupp!! your filess!!!
[ -e ~/.config/bspwm ] && mv ~/.config/bspwm ~/.config/bspwm-backup-"$(date +%Y.%m.%d-%H.%M.%S)"

# Moving new files to .config
cd dotfiles
cp -r config/bspwm ~/.config/bspwm

# Move Fonts and the other stuff
mkdir -p ~/.local/share/fonts/
cp -r misc/fonts/* ~/.local/share/fonts/
cp -r misc/bin ~/.local/
cp -r misc/applications ~/.local/share/
cp -r misc/asciiart ~/.local/share/
fc-cache -rv



# If you will not use my zsh config, just add to your .zshrc file, this;
if [ -d "$HOME/.local/bin" ] ;
  then PATH="$HOME/.local/bin:$PATH"
fi

# For automatically launching mpd on login
systemctl --user enable mpd.service
systemctl --user start mpd.service

chmod +x ~/.config/bspwm/bspwmrc
chown $USER ~/.config/bspwm/rice.cfg
chmod +x ~/.config/bspwm/scripts/{external_rules,getSongDuration,music,RandomWall,hu-polybar,LaunchWorld,RiceSelector,screenshoter,updates.sh,WeatherMini}

# In Cristina, Pamela, Andrea & z0mbi3 Rices, you need to give execution permissions to the shell scripts too.

chmod +x ~/.config/bspwm/rices/pamela/widgets/{calendar,calendarlauncher,mplayer-launcher,power-launcher,profile-sys-launcher}
chmod +x ~/.config/bspwm/rices/andrea/arin/sidedar/toggle_sidebar
chmod +x ~/.config/bspwm/rices/andrea/arin/scripts/{battery,check-network,music_info,quotes,sys_info,system,volume.sh,widget_apps,widget_search}
chmod +x ~/.config/bspwm/rices/cristina/widgets/mplayer-launcher
chmod +x ~/.config/bspwm/rices/z0mbi3/bar/scripts/{battery,calendar,popup,volume.sh,wifi,workspace}
chmod +x ~/.config/bspwm/rices/z0mbi3/dashboard/LaunchInfoCenter.sh
chmod +x ~/.config/bspwm/rices/z0mbi3/dashboard/scripts/weather





echo "installing login manager"
sudo pacmna -Syy sddm
sudo systemctl enable sddm.service



echo "other"
sudo pacman -Syy evil-winrm responder nmap whatweb ffuf gobuster metasploit  sqlmap wpscan binwalk blackarch/perl-image-exiftool radare2 community/wireshark-qt blackarch/pwntools john blackarch/gtfo blackarch/pwncat-caleb community/dog community/termshark dirsearch  pdf-parser ysoserial  nishang impacket bloodhound burpsuite enum4linux fcrackzip ghidra  gdb webp-pixbuf-loader 


git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
cd && wget https://raw.githubusercontent.com/expandpi/dots/main/tmux.conf -O .tmux.conf
cd && echo  "/usr/bin/spice-vdagent &" >> .xprofile 
pip3 install --user uploadserver


