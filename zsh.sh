#!/bin/bash

zsh.sh(){
	sudo apt install zsh;
	sudo chsh -s $(which zsh);
	echo $SHELL;
	$SHELL --version;

	sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)";
}
