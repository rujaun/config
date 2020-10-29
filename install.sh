#!/bin/bash

echo -e "\nInstall .bashrc? (Y/N): "

read BASHRC

if [ "$BASHRC" = "Y" ]; then
	rm ~/.bashrc
	cp ./.bashrc ~/.bashrc
	source ~/.bashrc
fi

echo -e "\nInstall .vimrc? (Y/N): "

read VIMRC

if [ "$VIMRC" = "Y" ]; then

	echo -e "\nChecking if .vimrc exists..."

	FILE=~/.vimrc
	if [[ -f "$FILE" ]]; then
		echo -e "\n$FILE exists."

		rm ~/.vimrc
		cp ./.vimrc ~/.vimrc
	else
		rm ~/.vimrc
		cp ./.vimrc ~/.vimrc
	fi
fi

echo -e "\nConfigure git for first time setup? (Y/N): "

read GIT

if [ "$GIT" = "Y" ]; then
	echo -e "\nSetting up git..."
	git config --global user.name "Rujaun Fourie"
	git config --global user.email rujaun@gmail.com
fi


echo -e "\nInstall Windows Fonts? (Y/N): "

read FONTS

if [ "$FONTS" = "Y" ]; then

	echo -e "\nChecking if WinFonts exists..."

	FILE=../WinFonts
	if [[ -d "$FILE" ]]; then
		echo -e "\n$FILE exists."
	else
		echo -e "\n$FILE does not exist."
		exit
	fi

	echo -e "\nInstalling fonts"
	sudo mkdir /usr/share/fonts/WinFonts
	sudo cp ./WinFonts/* /usr/share/fonts/WinFonts/
	sudo chmod 644 /usr/share/fonts/WinFonts/*
	fc-cache --force
	sudo cp ./local.conf /etc/fonts/local.conf
fi

echo -e "\nInstall OpenSSH and add SSH key to ssh-agent?"

READ SSHKEY

if [ "$SSHKEY" = "Y" ]; then
	echo -e "\nChecking if ssh key exists..."

	FILE=~/.ssh/id_rsa
	if [[ -f "$FILE" ]]; then
		echo -e "\n$FILE exists."

		echo -e "\nInstalling OpenSSH and adding SSH key to ssh-agent"
		sudo pacman -S openssh --noconfirm
		eval "$(ssh-agent -s)"
		chmod 400 ~/.ssh/id_rsa
		ssh-add ~/.ssh/id_rsa
	else
		echo -e "\n$FILE does not exist."
		exit
	fi
fi

echo -e "\nInstall credential manager for SSH key passphrases?"

READ SSHCRED

if [ "$SSHCRED" = "Y" ]; then
	echo -e "\nCopying ssh-agent.sh"
	cp ./ssh-agent.sh ~/.config/plasma-workspace/env/ssh-agent.sh
	chmod u+x ~/.config/plasma-workspace/env/ssh-agent.sh

	echo -e "\nCopying askpass.sh"
	cp ./askpass.sh ~/.config/plasma-workspace/env/askpass.sh
	chmod u+x ~/.config/plasma-workspace/env/askpass.sh

	echo -e "\nCopying ssh-add.sh"
	cp ./askpass.sh ~/.config/autostart-scripts/ssh-add.sh
	chmod u+x ~/.config/autostart-scripts/ssh-add.sh
fi

echo -e "\nInstall Nvidia tearing fix? (Y/N): "

read NVIDIA

if [ "$NVIDIA" = "Y" ]; then
	echo -e "\nInstalling Nvidia tearing fix..."
	cp ./force-composition-pipeline.sh ~/.config/autostart-scripts/force-composition-pipeline.sh
	chmod +x ~/.config/autostart-scripts/force-composition-pipeline.sh
fi


# Global Theme: Breeze
# Plasma Style: Breeze
# Application Style: Breeze
# Window Decorations: Breezemite
# Colors: Breeze Light
# Fonts General: Noto Sans
# Icons: Tela
# Login Screen (SDDM): Nordic
# Splash Screen: Dots ArchLinux Splashscreen
# Konsole Color Profile: Dark One Nuanced