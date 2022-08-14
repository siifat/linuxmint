#! /usr/bin/bash

#Installing fonts
echo "
Installing desired fonts...

"
mkdir Downloads/Fonts/
cd Downloads/Fonts/
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/FiraCode.zip
mkdir /home/sifat/.local/share/fonts/
unzip FiraCode.zip -d /home/sifat/.local/share/fonts/
cd Downloads/
rm -rf Fonts/
sudo apt-get install fonts-roboto -yyqq

#Settings up your terminal
echo "

Settings up your xfce4-terminal..

"
cd ~
sudo apt-get install git curl -yyqq
cd Downloads/
git clone https://github.com/arcticicestudio/nord-xfce-terminal.git
cd nord-xfce-terminal/
./install.sh
cd Downloads/ 
git clone https://github.com/anhsirk0/fetch-master-6000.git
cd fetch-master-6000/
./install.sh
sudo echo "
#Fetch Master 6000
fm6000 -c bright_green -say "I Love Linux Mint!" -l 19 -m 10" >> /home/sifat/.bashrc
cd Downloads/
rm -rf nord-xfce-terminal/
rm -rf fetch-master-6000/
cd ~
curl -sS https://starship.rs/install.sh | sh
sudo echo "eval "$(starship init bash)"" >> /home/sifat/.bashrc

#Downloading Themes
echo "Downloading themes..."
sudo apt-get install gtk2-engines-murrine gtk2-engines-pixbuf -yyqq
cd Downloads/
git clone https://github.com/vinceliuice/Qogir-theme.git
cd Qogir-theme/
./install.sh -d /home/sifat/.themes/
cd Downloads/
rm -rf Qogir-theme/
git clone https://github.com/vinceliuice/Qogir-icon-theme.git
cd Qogir-icon-theme/
./install.sh -d /home/sifat/.icons/
cd Downloads/
rm -rf Qogir-icon-theme/

#Settings up Desktop
git clone https://github.com/siifat/mintxfce.git
cd mintxfce/
cp terminalrc /home/sifat/.config/xfce4/terminal/
cp whiskermenu-1.rc /home/sifat/.config/xfce4/panel/


echo "

Done! Reboot

"
