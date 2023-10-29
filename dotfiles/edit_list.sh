#!/bin/bash

myTerm=alacritty
myEdit=vim

menu(){
	printf "1. alacritty\n"
	printf "2. bash_alias\n"
	printf "3. zsh\n"
	printf "4. fish\n"
	printf "5. vim\n"
	printf "6. p10k\n"
	printf "7. Dots\n"
	printf "8. Bkup\n"
	printf "9. starship\n"
	printf "10. tmux\n"
	printf "11. .bashrc\n"
	printf "12. .profile\n"
}

main(){
    choice=$(menu | rofi -dmenu -p "Edit File"| cut -d. -f1)

	case $choice in
		1)
			$myTerm -e sh -c "sleep 0.2 ; $myEdit $HOME/.config/alacritty/alacritty.toml"
            ;;
		2)
			$myTerm -e sh -c "sleep 0.2 ; $myEdit $HOME/.bash_aliases"
            ;;
		3)
			$myTerm -e sh -c "sleep 0.2 ; $myEdit $HOME/.zshrc"
            ;;
		4)
           	$myTerm -e sh -c "sleep 0.2 ; $myEdit $HOME/.config/fish/config.fish"
            ;;
		5)
            $myTerm -e sh -c "sleep 0.2 ; $myEdit $HOME/.vimrc"
            ;;
		6)
            $myTerm -e sh -c "sleep 0.2 ; $myEdit $HOME/.p10k.zsh"
            ;;
		7)
           	$myTerm -e sh -c "sleep 0.2 ; $myEdit $HOME/.Backup_Dots"
            ;;
		8)
            $myTerm -e sh -c "sleep 0.2 ; $myEdit $HOME/.Backup_Stuff"
            ;;
		9)
           	$myTerm -e sh -c "sleep 0.2 ; $myEdit $HOME/.config/starship.toml"
            ;;
		10)
            $myTerm -e sh -c "sleep 0.2 ; $myEdit $HOME/.tmux.conf"
            ;;
		11)
            $myTerm -e sh -c "sleep 0.2 ; $myEdit $HOME/.bashrc"
            ;;
		12)
            $myTerm -e sh -c "sleep 0.2 ; $myEdit $HOME/.profile"
            ;;

        esac
}

main


