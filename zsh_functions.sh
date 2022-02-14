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
	echo "Enter input for first problem?"
	cat > a.in

	:>a.cpp
	:>b.cpp
	:>b.in
	:>c.cpp
	:>c.in

	vim -p a.cpp b.cpp c.cpp -c ":vsp a.in" -c ":sp a.out" -c ":tabnext" -c ":vsp b.in" -c ":sp b.out" -c ":tabnext" -c ":vsp c.in" -c ":sp c.out" -c ":tabfirst"
}

te() {
	mcd ~/test
	make clean
	echo "Enter test case?"
	cat > sol.in
	:>sol.cpp

	vim sol.cpp -c ":vsp sol.in" -c ":sp sol.out"
}
