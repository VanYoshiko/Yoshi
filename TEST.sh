#!/bin/sh

#Header{{{
TEST_FILE="./tutorial_tst.sh"
TMP_FILE="temp_file.tmp"
DATE="date"
#}}}

# FILE COMMANDS <!--{{{-->
# =============

# grep "HELLO WORLD" <echo "HELLO WORLD"

# echo " Scripts Usage:\n Ability to exexecute multiple commands simultaneously"

# grep "Hello World" $TEST_FILE
# echo "Usage:\n  When searching for a string in a file"

# grep "Hello World!" <<EOF
# Hello World! No temp file! 
# EOF

# echo "HELLO WORLD" >> $TEMP_FILE && \ grep "HELLO WORLD" $TEMP_FILE && \ rm $TEMP_FILE

# !cat tutorial_tst.sh | grep "Hello World"#}}}

# Greetings and Settings Commands #{{{
# message="Variable:\n Hello world"
#echo $message How are you? && read RESPONSE && echo $RESPONSE && echo 😁
#!--{{{-->
hello_world() {
echo "Function:\n Hello World"
#echo "Usage:\n When commands are needed multiple times in script"
echo ">'.'<"
echo "Today is:\n" && date
echo "====================================" && uptime
echo "====================================" && htop
}
}}}

# MY_FIRST_LIST={one;two;three four,five}{{{
# echo $MY_FIRST_LIST
# 
# # To display Configurations
# echo $SHELL
# # cat /etc/passwd
# echo "ISH Configurations:"
# echo "Linux Task Manager"
# top
# echo "Display uptime:"
# uptime
# echo "zzz..."
# sleep
# # Sudo Commands
# echo "List of servers to install"
# tasksel
# # list Partitions on a drive
# https://youtu.be/OQZgrBDJ-js?t=1703&feature=shared
# fdisk -l}}}

#}}}

# LOOPS <!--{{{-->
# =====

# SYNOPSIS <!--{{{-->
# ========
# -lt, -le, -gt, -ge, -eq, -nè

# while [ condition ];
# do
#	 statements
#	 commands
# done
#}}}

# EXAMPLE: <!--{{{-->
# ========
# x=1
# while [ $x -le 5 ];
# do
# 	echo "This number is less 5: $x"
# 	x=$(( x + 1 ))
# done
# }}}}}}

# IF STATEMENTS <!--{{{-->
# =============

# SYNOPSIS <!--{{{-->
# ========
# if CONDITION; then
# 	COMMAND
# elif CONDITION; then
# 	SECOND COMMAND
# else
# 	SOME OTHER COMMAND
# fi


# ==================================== }}}}}}

# MENUS <!--{{{-->

# Menu to display my list of files
file_to_view=$5

echo "1. ai.md"
echo "2. financial_db.csv"
echo "3. tutorial_tst.md"
echo "4. err_log.txt"
echo -n "Please choose a file to view [1, 2, 3, 4]: "
while [ $file_to_view -5 ]; do
	read file_to_view
	if [ $file_to_view -eq 1 ]; then
		echo "Viewing ai.md...";
		view ai.md
	elif [ $file_to_view -eq 2 ]; then
		echo "Viewing financial_db.csv...";
		view financial_db.csv
	elif [ $file_to_view -eq 3 ]; then
		echo "Viewing tutorial_tst.md...";
		view tutorial_tst.md
	elif [ $file_to_view -eq 4 ]; then
		echo "Viewing err_log.txt...";
		view err_log.txt
	else 
		echo "Warning! You must choose[1, 2, 3, 4]"
		file_to_view=5
		echo -n "Please choose a file to view [1, 2, 3, 4]: "
	fi
done
====================================
}}}

# AWK <!--{{{-->
# ===

# FINANCIAL_DB.CSV AWKS <!--{{{-->
# =====================
# awk '/Eating/ {print $2}' financial_db.csv
# }}}}}}

