#!/bin/bash

pip.sh(){
	sudo apt-get install python-pip python-dev build-essential;
	sudo pip install --upgrade;

	# scipy stack
	sudo apt-get install python-numpy python-scipy python-matplotlib ipython ipython-notebook python-pandas python-sympy python-nose;

	clear;
}
