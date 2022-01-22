#!/bin/zsh
mcd() {
	mkdir -p $1
	cd $1
}

cf() {
	mcd ~/CodeForces/$1
	mkdir src/ bin/ ./in/
	cp ../Makefile .
	touch src/A.cpp in/A.in
	vim -c 'startinsert' in/A.in
}
