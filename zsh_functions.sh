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

	echo "Enter input for first problem?"
	cat > any.in

	:>a.cpp
	:>b.cpp
	:>c.cpp
	:>d.cpp
	:>e.cpp

	vim a.cpp b.cpp c.cpp d.cpp e.cpp -c ":vsp any.in" -c ":sp any.out"
}

help() {
	mcd ~/help
	make clean
	echo "Enter test case?"
	cat > sol.in
	:>sol.cpp

	vim sol.cpp -c ":vsp sol.in" -c ":sp sol.out"
}

virtualenv_info() {
	[ $VIRTUAL_ENV ] && echo '('`basename $VIRTUAL_ENV`') '
}
