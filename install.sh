#!/bin/bash

for file in [!i]*; do
	echo $file
	cd ~
	ln -sfi ~/dotfiles/$file .$file
done
