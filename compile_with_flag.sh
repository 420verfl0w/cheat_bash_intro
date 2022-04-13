#!/bin/bash

function compile_with_flag() {
	file_name=$1
	out_name=${file_name%.c}
	# TEST
	#-f	file
	#-d	directory
	#-z	empty file / empty variables
	#-!	not
	#&&	ET logic
	#||	OU logic
	gcc -Wall -Werror -Wextra ${file_name} -o ${out_name}
}

#compile_with_flag main.c
compile_with_flag $1

