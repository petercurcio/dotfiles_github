#!/bin/bash

# -------
# Aliases
# -------

# Github repo details
# git@github.com:petercurcio/dotfiles_github.git
# https://github.com/petercurcio/dotfiles_github.git

# Test
alias test="echo 'Seems to be working...'"

# Navigate to ~/Documents/new-vm-install-script/
alias nvm="cd ~/Documents/new-vm-install-script/"
alias nvmg="cd ~/Documents/new-vm-install-script/ && git pull"

# sudo apt update
alias sup="sudo apt update"
#alias supg="sudo apt update && sudo apt upgrade -y"
alias supg="supg"

function supg() {
	echo ""
	echo "Beginning update..."
	echo ""
	sudo apt update

	echo ""
	echo "Upgrading packages..."
	echo ""
	sudo apt upgrade -y

	echo ""
	echo "Cleaning up..."
	echo ""
	sudo apt-get clean && sudo apt-get autoclean && sudo apt autoremove -y

	if dpkg -l snapd | grep '^ii' >/dev/null 2>&1; then
		echo ""
		echo "Refreshing snaps..."
		echo ""
		sudo snap refresh
	fi
}


# For Arch-based distros using pacman pkg manager
alias pacup="pacup"

function pacup() {
	echo ""
	echo "Upgrading packages..."
	echo ""
	sudo pacman -Syu --noconfirm
}


# For Arch-based distros using yaourt frontend for pacman pkg manager
alias yup="yup"

function yup() {
	
	echo ""
	echo "Upgrading packages..."
	echo ""
	# sudo pacman -Syu --noconfirm
	if ! pacman -Q yaourt 2>&1 >/dev/null; then
		sudo pacman -S base-devel yaourt --needed --noconfirm
	fi
	yaourt -Syua --noconfirm

}

# sudo apt-get autoclean
alias sac="sudo apt-get autoclean"
# sudo apt autoremove
alias sar="sudo apt autoremove -y"
# sudo apt-get autoclean && sudo apt autoremove -y
alias sarc="sudo apt-get clean && sudo apt-get autoclean && sudo apt autoremove -y"

# Clear
alias c='clear'
alias cl='clear'
alias cls='clear;ls'
alias cla='clear;ls -al'

# List
alias la='ls -al'
alias ls='ls -a'

# Editing and loading in updates to .bashrc/.bash_profile
#alias sbash="source ~/.bashrc"
#alias nbash="nano ~/.bashrc"

# WP-CLI
# alias wp='~/wp-cli.phar'
alias wpall="cd /vagrant; bash wpUpdateAll.sh"

# WP-CLI themes
# alias wpti='function _wpti() { wp theme install $1; };_wpti'
# alias wpta='function _wpta() { wp theme activate $1; };_wpta'
# alias wptdl='function _wptdl() { wp theme delete $1; };_wptdl'

# WP-CLI plugins
# alias wppi='function _wppi() { wp plugin install $1; };_wppi'
# alias wppa='function _wppa() { wp plugin activate $1; };_wppa'
# alias wppd='function _wppd() { wp plugin deactivate $1; };_wppd'
# alias wppdl='function _wppdl() { wp plugin delete $1; };_wppdl'

# Navigating in ssh
alias wpt="cd wp-content/themes/ && ls"
alias wpp="cd wp-content/plugins/ && ls"

# Navigating
alias home="cd ~"
alias ..="cd .."
alias vd="cd /vagrant && ls"

# Git
alias gs="git status"
alias ga.="git add ."
alias gpom="git push origin master"
alias gplom="git pull origin master"
alias grv="git remote -v"

# 1Password - launch browser helper
alias 1agent='wine "C:\Program Files (x86)\1Password 4\Agile1pAgent.exe"'
