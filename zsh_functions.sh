#!/bin/zsh
mcd() {
	mkdir -p $1
	cd $1
}

cf() {
	if [ $# -eq 1 ]; then
		mcd ~/codechef
	else
		mcd ~/codeforces
	fi

	make clean

	:>a.cpp
	:>a.in
	:>b.cpp
	:>b.in
	:>c.cpp
	:>c.in

	vim -p a.in b.in c.in -c "startinsert"
}

te() {
	mcd ~/test
	make clean
	:>sol.cpp
	:>sol.in

	vim sol.cpp sol.in
}
