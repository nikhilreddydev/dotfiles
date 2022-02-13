#!/bin/zsh
mcd() {
	mkdir -p $1
	cd $1
}

cf() {
	#create new contest folder
	if [ $# -eq 2 ]; then
		mkdir -p ~/codeforces/$1/{bin,in}/$2
		mcd ~/codeforces/$1/src/$2
	else
		mcd ~/codeforces/std/src/$1
		mkdir ../../{bin,in}/$1
	fi

	#create initial files
	touch A.cpp B.cpp
	cd ../..
	if [ $# -eq 2 ]; then
		touch in/$2/{A,B}.in
	else
		touch in/$1/{A,B}.in
	fi

	# open files in vim
	if [ $# -eq 2 ]; then
		vim src/$2/* in/$2/* -c ":b3" -c "startinsert"
	else
		vim src/$1/* in/$1/* -c ":b3" -c "startinsert"
	fi
}

c() {
	#create new contest folder
	if [ $# -eq 2 ]; then
		mkdir -p ~/codechef/$1/{bin,in}/$2
		mcd ~/codechef/$1/src/$2
	else
		mcd ~/codechef/starters/src/$1
		mkdir ../../{bin,in}/$1
	fi

	#create initial files
	touch A.cpp B.cpp
	cd ../..
	if [ $# -eq 2 ]; then
		touch in/$2/{A,B}.in
	else
		touch in/$1/{A,B}.in
	fi

	# open files in vim
	if [ $# -eq 2 ]; then
		vim src/$2/* in/$2/* -c ":b3" -c "startinsert"
	else
		vim src/$1/* in/$1/* -c ":b3" -c "startinsert"
	fi
}

testcpp() {
	if [ $# -eq 1 ]; then
		mkdir -p ~/test/{src,bin,in}/$1/
	fi

	mcd ~/test

	if [ $# -eq 1 ]; then
		touch src/$1/sol.cpp in/$1/sol.in
	else
		touch src/1/sol.cpp in/1/sol.in
	fi

	if [ $# -eq 1 ]; then
		vim src/$1/sol.cpp in/$1/sol.in -c ":b2" -c "startinsert"
	else
		vim src/1/sol.cpp in/1/sol.in -c ":b2" -c "startinsert"
	fi
}
