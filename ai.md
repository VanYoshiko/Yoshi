COMMANDS <!--{{{-->
========
NOTES <!--{{{-->
=====
Date: 5/21/25, 10:15
 Link:[Check bash commands ](https://explainshell.com/explain?cmd=%5B+%21+-d+%24FOOBAR_DIR+%5D%3B+mkdir+%24FOOBAR_DIR%3B+%5B+%21+-f+%24FOO+%5D+%26%26+%5B+%21+-f+%24BAR+%5D%3B+touch+%24FOO+%24%24+touch+%24BAR)
<!--}}}-->

:EXECUTE <!--{{{-->
============
<!--}}}-->

:<C-U>NORMAL! <!--{{{-->
===============
<!--}}}-->

OPERATOR PENDING TEST <!--{{{-->
=====================

Macro pasted from egister:
c3}{}ci{"<%Ä˝a
}{}ci{"<%Ä˝a

Edited for Command line:
onoremap $ :execute "normal! }{}\<C-o>ci{\<C-r>\"\<C-o>\<\%\<Esc>a"<CR>

Breakdown of parts testing:
:normal! }{}
onoremap & :normal! }{}
:normal! ci{\<C-r>"
onoremap ! :normal! ci{\<C-r>"
:normal! %a
onoremap # :normal! %a

<!--}}}}}}-->

VIM <!--{{{-->
===
<!--{{{-->	VIMINFO & VIMSESSION FILES
		===========================
You can quickly start editing with a previously saved View or Session with the
|-S| argument: >
	vim -S Session.vim
<
All this is {not available when compiled without the |+mksession| feature}.

Navigate undo tree! <!--{{{-->
===================
  [gf]                       When cursor under filename, opens file.
:undolist             Displays undo tree
  Did you know, vim lets you travel through time.

:earlier 2m

whoops, too far

:later 30s

perfect!
<!--}}}-->
<!--{{{--> HISTORY
		 =======
 Link:[The problem with Bash history is that it's not written to the .bash_history file until you log off. This makes it impossible to use the history command for scripting. For example, say you're teaching a Linux class, and you want to check to see if students have run a particular command to copy their files to a mounted external drive. If the student stays logged onto the system, you won't be able to determine if the copy has been performed because your script uses their history file (/home/student/.bash_history) to check if the command has run.

The solution

To work around this feature, use the write option for the history command. As part of the class instruction, you'd have the students run this command to save their history even if they don't log off.

$ history -w](https://www.redhat.com/en/blog/history-command)
Time: 02:12
 [{"üîó":"L","üé¶":"V"}]:[The history command isn't an executable file on your filesystem, like most commands, but a function of Bash. You can verify this by using the type command:

$ type history history is a shell builtin]
Time: 02:15
 [V
L]:[There are other history-related variables, too. The HISTCONTROL variable controls what history is stored. You can force Bash to exclude commands starting with empty space by placing this in your .bashrc file:

export HISTCONTROL=$HISTCONTROL:ignorespace
Now, if you type a command starting with a space, that command won't get recorded in history:

$ echo "hello" $ mysql -u bogus -h badpassword123 mydatabase $ echo "world" $ history 1 echo "hello" 2 echo "world" 3 history]
Time: 02:17
 []:[If you like both of these ignores, you can just use ignoreboth:

export HISTCONTROL=$HISTCONTROL:ignoreboth]
Time: 02:22
 []:[history

Sometimes you make a mistake and type something sensitive into your shell, or maybe you just want to clean up your history so that it more accurately represents the steps you took to get something working correctly. If you want to delete a command from your history in Bash, use the -d option with the line number of the item you want to remove:

$ echo "foo" foo $ echo "bar" bar $ history | tail 535 echo "foo" 536 echo "bar" 537 history | tail $ history -d 536 $ history | tail 535 echo "foo" 536 history | tail 537 history -d 536 538 history | tail]
Time: 02:25
 []:[You can clear your entire session history with the -c option:

$ history -c $ history $](https://opensource.com/article/20/6/bash-history-control)
Time: 02:48
 []:[](https://www.geeksforgeeks.org/history-command-in-linux-with-examples/)
<!--}}}-->
 Link:[# .vimrc<!--{{{-->

To use the new values without logging off and back on again, you can execute the .bashrc file.

$ . ~/.bashrc](https://www.redhat.com/en/blog/history-command)
<!--}}}-->

<!--{{{-->	AUTOCOMMANDS
				============
		:autocmd FileType javascript nnoremap <buffer> <localleader>c I//<esc>
		:autocmd FileType python     nnoremap <buffer> <localleader>c I#<esc>

		Open a Javascript file (a file that ends in .js), pick a line and type <localleader>c. This will comment out the line.

		Now open a Python file (a file that ends in .py), pick a line and type <localleader>c. This will comment out the line, but it will use Python's comment character!<!--}}}-->

<!--}}}-->

REGISTER <!--{{{-->
========
SPECIAL REGISTERS:
==================
('"')	the unnamed register, containing the text of the last delete or yank"
'%'	the current file name
'#'	the alternate file name
#'*'	the clipboard contents (x11: primary selection)
'+'	the clipboard contents
'/'	the last search pattern
':'	the last command-line
'-'	the last small (less than a line) delete
'.'	the last inserted text
*c_ctrl-r_=*
'='	the expression register: you are prompted to
enter an expression (see |expression|)
(doesn't work at the expression prompt; some things such as changing the buffer or current window are not allowed to avoid side effects)"
====================================
<!--}}}-->
<!--}}}-->

SEARCH <!--{{{-->
======
				
NOTES: <!--{{{-->
========
^
$					 always match at embedded newlines, and you get two separate atoms, \%^ and \%$, which only match at the very start and end of the text, respectively.  Vim solves the second problem by giving you the \_ "modifier":  put it in front of a . or a character class, and they will match newlines as well.

The Vim editor uses regular expressions to specify what to search for.
Regular expressions are an extremely powerful and compact way to specify a search pattern.  Unfortunately, this power comes at a price, because regular expressions are a bit tricky to specify.  In this section we mention only a few essential ones.  More about search patterns and commands can be found in chapter 27 |usr_27.txt|.  You can find the full explanation here: |pattern|.
<!--}}}-->

<!--{{{--> BASIC REGEX 
			  ============
 []:[The following are some basic regular expressions:

Sr. no.	Symbol	 Description
1.	.	It is called a wild card character, It matches any one character other than the new line.
2.	^	It matches the start of the string.
3.	$	It matches the end of the string.
4.	*	It matches up to zero or more occurrences i.e. any number of times of the character of the string.
5.	\	It is used for escape following character.
6.	()	It is used to match or search for a set of regular expressions.
7.	?	It matches exactly one character in the string or stream.
Below is the link to the text file that we are going to use](https://www.geeksforgeeks.org/how-to-use-regular-expressions-regex-on-linux/)
Time: 03:20
 []:[5. Using "\" (a backslash) to match the special symbol

Using "\" with special symbols like whitespace (" "), newline("\n"), we can find strings from the file. Let's see an example for a better understanding. Here we are trying to find all the fruit's names that have space in their full names.

Script:<!--{{{-->

#!/bin/sh

# Basic Regular Expression

# 5. Using "\" to match the special symbol

# loading the text file

fruits_file=`cat fruit.txt | grep  "\ "`

echo "5. Using '\' to find out all the fruits name that has single space in their full name"

# displaying output

echo "Output:"

echo "$fruits_file"

](https://www.geeksforgeeks.org/how-to-use-regular-expressions-regex-on-linux/)<!--}}}-->
<!--}}}-->

<!--{{{--> 	REGEX
				=====
NOTE:
The characters ".*[]^%/\?~$" have special meanings.  If you want to use them in a search you must put a \ in front of them. 
Examples:
after:	  \v	   \m	    \M	     \V		matches ~
'magic' 'nomagic'
a	   a	    a	     a		literal 'a'
\a	   \a	    \a	     \a		any alphabetic character
.	   .	    \.	     \.		any character
\.	   \.	    .	     .		literal dot
$	   $	    $	     \$		end-of-line
*	   *	    \*	     \*		any number of the previous atom
~	   ~	    \~	     \~		latest substitute string
()	   \(\)     \(\)     \(\)	group as an atom
|	   \|	    \|	     \|		nothing: separates alternatives

\\	   \\	    \\	     \\		literal backslash
\{	   {	    {	     {		literal curly brace
==================================== <!--}}}-->

Simple search patterns <!--{{{-->
======================
	
<!--{{{-->	BEGINNING AND END OF A LINE
		===========================

The ^ character matches the beginning of a line.  On an English-US keyboard you find it above the 6.  The pattern "include" matches the word include anywhere on the line.  But the pattern "^include" matches the word include only if it is at the beginning of a line.
   The $ character matches the end of a line.  Therefore, "was$" matches the word was only if it is at the end of a line.

Let's mark the places where "/the" matches in this example line with "x"s:

	the solder holding one of the chips melted and the ~
	xxx			  xxx		       xxx

Using "/the$" we find this match:

	the solder holding one of the chips melted and the ~
						       xxx

And with "/^the" we find this one:
	the solder holding one of the chips melted and the ~
	xxx

You can try searching with "/^the$"; it will only match a single line
consisting entirely of "the".  White space does matter here, thus if a line
contains a space after the word, like "the ", the pattern will not match.
}<!--}}}-->

<!--{{{-->	MATCHING ANY SINGLE CHARACTER
		=============================

The . (dot) character matches any existing character.  For example, the
pattern "c.m" matches a string whose first character is a c, whose second
character is anything, and whose third character is m.  Example:

	We use a computer that became the cummin winter. ~
		 xxx		 xxx	  xxx
<!--}}}-->

<!--{{{-->	MATCHING SPECIAL CHARACTERS
		===========================

If you really want to match a dot, you must avoid its special meaning by
putting a backslash before it.
   If you search for "ter.", you will find these matches:

	We use a computer that became the cummin winter. ~
		      xxxx			    xxxx

Searching for "ter\." only finds the second match.
<!--}}}-->

<!--{{{-->	Using marks
		===========

When you make a jump to a position with the "G" command, Vim remembers the position from before this jump.  This position is called a mark.  To go back where you came from, use this command: >

	``

This ` is a backtick or open single-quote character.
   If you use the same command a second time you will jump back again.  That's because the "`" command is a jump itself, and the position from before this jump is remembered.

Generally, every time you do a command that can move the cursor further than within the same line, this is called a jump.  This includes the search commands "/" and "n" (it doesn't matter how far away the match is).  But not the character searches with "fx" and "tx" or the word movements "w" and "e".
   Also, "j" and "k" are not considered to be a jump, even when you use a count to make them move the cursor quite a long way away.

The "``" command jumps back and forth, between two points.  The CTRL-O command jumps to older positions (Hint: O for older).  CTRL-I then jumps back to newer positions (Hint: for many common keyboard layouts, I is just next to O).
Consider this sequence of commands: >

	33G
	/^The
	CTRL-O

You first jump to line 33, then search for a line that starts with "The".  Then with CTRL-O you jump back to line 33.  Another CTRL-O takes you back to where you started.  If you now use CTRL-I you jump to line 33 again.  And to the match for "The" with another CTRL-I.


	     |	example text   ^	     |
	33G  |	example text   |  CTRL-O     | CTRL-I
	     |	example text   |	     |
	     V	line 33 text   ^	     V
	     |	example text   |	     |
       /^The |	example text   |  CTRL-O     | CTRL-I
	     V	There you are  |	     V
		example text

	Note:
	CTRL-I is the same as <Tab>.

The ":jumps" command gives a list of positions you jumped to.  The entry which
you used last is marked with a ">".

<!--{{{-->	NAMED MARKS
		===========
*bookmark*

Vim enables you to place your own marks in the text.  The command "ma" marks the place under the cursor as mark a.  You can place 26 marks (a through z) in your text.  You can't see them, it's just a position that Vim remembers.  To go to a mark, use the command `{mark}, where {mark} is the mark letter.
Thus to move to the a mark:
>
	`a

The command "'mark" (single quotation mark, or apostrophe) moves you to the
beginning of the line containing the mark.  This differs from the "`mark"
command, which also moves you to the marked column.

The marks can be very useful when working on two related parts in a file.
Suppose you have some text near the start of the file you need to look at,
while working on some text near the end of the file.
   Move to the text at the start and place the s (start) mark there: >

	ms

Then move to the text you want to work on and put the e (end) mark there: >

	me

Now you can move around, and when you want to look at the start of the file,
you use this to jump there: >

	's

Then you can use '' to jump back to where you were, or 'e to jump to the text
you were working on at the end.
   There is nothing special about using s for start and e for end, they are
just easy to remember.

You can use this command to get a list of marks: >

	:marks

You will notice a few special marks.  These include:

	'	The cursor position before doing a jump
	"	The cursor position when last editing the file
	[	Start of the last change
	]	End of the last change

<!--}}}-->

<!--{{{--> SEARCHING FOR A WORD IN THE TEXT
	 ================================

Suppose you see the word "TheLongFunctionName" in the text and you want to
find the next occurrence of it.  You could type "/TheLongFunctionName", but
that's a lot of typing.  And when you make a mistake Vim won't find it.
   There is an easier way: Position the cursor on the word and use the "*"
command.  Vim will grab the word under the cursor and use it as the search
string.
   The "#" command does the same in the other direction.  You can prepend a
count: "3*" searches for the third occurrence of the word under the cursor.
<!--}}}-->

SEARCHING FOR WHOLE WORDS <!--{{{-->
=========================

If you type "/the" it will also match "there".  To only find words that end
in "the" use: >

	/the\>

	The "\>" item is a special marker that only matches at the end of a word.
	Similarly "\<" only matches at the beginning of a word.  Thus to search for
	the word "the" only: >

		/\<the\>

		This does not match "there" or "soothe".  Notice that the "*" and "#" commands
		use these start-of-word and end-of-word markers to only find whole words (you
		can use "g*" and "g#" to match partial words).
<!--}}}-->

<!--{{{-->	MATCHING A PARENTHESIS
		======================

When writing a program you often end up with nested () constructs.  Then the
"%" command is very handy: It moves to the matching paren.  If the cursor is
on a "(" it will move to the matching ")".  If it's on a ")" it will move to
the matching "(".

			    %
			 <----->
		if (a == (b * c) / d) ~
		   <---------------->
			    %

This also works for [] and {} pairs.  (This can be defined with the
'matchpairs' option.)

When the cursor is not on a useful character, "%" will search forward to find
one.  Thus if the cursor is at the start of the line of the previous example,
"%" will search forward and find the first "(".  Then it moves to its match:

		if (a == (b * c) / d) ~
		---+---------------->
			   %
<!--}}}-->

<!--{{{-->	MOVING TO THE START OR END OF A LINE
   	====================================

The "$" command moves the cursor to the end of a line.  If your keyboard has
an <End> key it will do the same thing.

The "^" command moves to the first non-blank character of the line.  The "0"
command (zero) moves to the very first character of the line, and the <Home>
key does the same thing.  In a picture ("." indicates a space):

		  ^
	     <-----------x
	.....This is a line with example text ~
	<----------------x   x-------------->
		0		   $

(the "....." indicates blanks here)

   The "$" command takes a count, like most movement commands.  But moving to
the end of the line several times doesn't make sense.  Therefore it causes the
editor to move to the end of another line.  For example, "1$" moves you to
the end of the first line (the one you're on), "2$" to the end of the next
line, and so on.
   The "0" command doesn't take a count argument, because the "0" would be
part of the count.  Unexpectedly, using a count with "^" doesn't have any
effect.
<!--}}}}}}}}}}}}-->

SCRIPTING <!--{{{-->
=========

 [Writing good code!](https://m.youtube.com/watch?v=NiljDyzAOcI)<!--{{{-->
‚åöÔ∏è 20:23
 [Learning Awk](https://youtu.be/9YOZmI-zWok)

‚åöÔ∏è 20:29
 [Beginners guide to SSH](https://youtu.be/2QXkrLVsRmk)
‚åöÔ∏è 20:31
 [Anyway ]()
Time: 20:47
 Link:[Learn the basics of xargs](https://m.youtube.com/watch?v=rp7jLi_kgPg)
Time: 20:50
 Link:[Commandline Utilities cut&tr ](https://m.youtube.com/watch?v=_0IFtMFYroU)
‚åöÔ∏è 20:54
  
Time: 20:59
 Link:[Vim tips&tricks](https://m.youtube.com/watch?v=bshMXXX40_4&list=PL5--8gKSku15tivUyt0D-mERePLEzrWUz&index=9&t=600s&pp=2AHYBJACAdIHCQnYAKO1ajebQw%3D%3D)
Time: 21:02
 Link:[Radioactive player](https://youtu.be/H7sf1RDFXpU)
Time: 21:07
 Link:[Moc music player](https://youtu.be/oLqrJOMScjU)
Time: 21:11
 Link:[Visual block mode](https://youtu.be/Ydzw70SvF-g)
Time: 21:13
 Link:[Thought Bot](https://m.youtube.com/watch?v=XA2WjJbmmoM&list=PL8tzorAO7s0jy7DQ3Q0FwF3BnXGQnDirs&index=3&pp=iAQB)
Time: 21:15
 Link:[Mastering the vim language ](https://youtu.be/wlR5gYd6um0)
Time: 21:16
 Link:[Thought not](https://youtu.be/wlR5gYd6um0)

Date: 5/21/25, 10:12
 Link:[Check and explains bash commands!](https://explainshell.com/explain?cmd=%5B+%21+-d+%24FOOBAR_DIR+%5D%3B+mkdir+%24FOOBAR_DIR%3B+%5B+%21+-f+%24FOO+%5D+%26%26+%5B+%21+-f+%24BAR+%5D%3B+touch+%24FOO+%24%24+touch+%24BAR)
<!--}}}-->

<!--{{{-->	TEST OPERATORS
				==============
echo "%%% "
[ apples = apples ]
echo "Display last exit code with dollar/questionmark:"
echo $? 
[ 0 = 1 ]
echo $?
[ 1 -eq 1 ]
echo $?
<!--}}}-->

WHILE VS FOR LOOPS <!--{{{-->
==================
 
Loop Type	Best For	Example
while			Conditional looping	while [ $x -lt 10 ]; do...
for			Iterating through lists	for item in {1..5}; do...
until			Run until condition met	until [ $x -gt 5 ]; do... 
<!--}}}-->

 VARIABLES <!--{{{-->
==========
 Link:[There are two types of variables present within Bash Scripting. Conventionally, If a variable, is declared inside a function then it is generally a local variable and if it is declared outside then it is a global variable. In the case of a bash script, this concept is a little bit different, here any variable whether it is written inside a function or outside a function by default is a global variable. If we want to make a local variable then we need to use the keyword "local".<!--{{{-->

Note: It is best practice to always use a local variable inside a function to avoid any unnecessary confusion.  
](https://www.geeksforgeeks.org/bash-scripting-introduction-to-bash-and-bash-scripting/)
<!--}}}-->
SYSTEM VARIABLES <!--{{{-->
================
Date: Thu, 22 May 2025 00:24
  [~]# set
BB_ASH_VERSION='1.33.1'
CHARSET='UTF-8'
HISTFILE='/root/.ash_history'
HOME='/root'
HOSTNAME='localhost'
LANG='C.UTF-8'
LC_COLLATE='C'
LINENO=''
LOGNAME='root'
OPTIND='1'
PAGER='less'
PATH='/sbin:/usr/sbin:/bin:/usr/bin:/usr/local/sbin:/usr/local/bin'
PPID='7'
PS1='\[\e[1;30;47m\][\W]\[\e[0m\]\[\e[1;31m\]\$\[\e[0m\] '
PS2='> '
PS4='+ '
PWD='/root'
SHELL='/bin/ash'
SHLVL='1'
TERM='xterm-256color'
USER='root'
Time:00:32
  [~]# set
BB_ASH_VERSION='1.33.1'
CHARSET='UTF-8'
HISTFILE='/root/.ash_history'
HOME='/root'
HOSTNAME='localhost'
IFS=' 
'
LANG='C.UTF-8'
LC_COLLATE='C'
LINENO=''
LOGNAME='root'
OPTIND='1'
PAGER='less'
PATH='/sbin:/usr/sbin:/bin:/usr/bin:/usr/local/sbin:/usr/local/bin'
PPID='7'
PS1='\[\e[1;30;47m\][\W]\[\e[0m\]\[\e[1;31m\]\$\[\e[0m\] '
PS2='> '
PS4='+ '
PWD='/root'
SHELL='/bin/ash'
SHLVL='1'
TERM='xterm-256color'
USER='root'
<!--}}}-->
<!--}}}-->

WHILE LOOP <!--{{{-->
==========
[SYNTAX OF WHILE LOOP] <!--{{{-->
=======================

while [ condition ];
do
    # statements
    # commands
done  

 [V]:[IF STATEMENT & WHILE LOOP DISTROTHBE ](https://m.youtube.com/watch?v=KgA-MnH9Bpw) <!--}}}-->

NOTES: <!--{{{-->
======
If the condition is true then the commands inside the while block are executed and are iterated again after checking the condition. Also if the condition is false the statements inside the while block are skipped and the statements after the while block are executed. ](https://www.geeksforgeeks.org/bash-scripting-while-loop/#the-syntax-of-a-while-loop-in-bash-scripting)

<!--}}}}}}-->

<!--{{{-->		CONDITIONAL STATEMENTS
			======================

if/ elif/ else
if [ ${1,,} = Van ]; then
echo "Oh! Your the boss here. Welcome!"
elif [ ${1,,} = help ]; then
echo "Just type your name"
else
echo "Your not authorized"
fi

if 1
echo "ONE"
endif
if 0
echo "ZERO"
endif

<!--}}}-->
<!--}}}-->

TESTING <!--{{{-->
=======

efm=%+P[%f],(%l\\,%c)%*[\ ]%t%*[^:]:\ %m,%-Q<!--{{{-->
- [:set emf?]       Displays emf settings 
=================================== <!--}}}-->

 <!--{{{-->
====================================
 onoremap $ :execute "normal! }{<cr>}<esc>""P"
onoremap $ normal! }{<cr>}<esc>""P"
c3}{<CR>}<Esc>""P

====================================

line 1
line 2 
line 3

line 4
line 5
line 6

line 7
line 8
line 9

line 10
line 11
line 12


====================================<!--}}}}}}-->

UTILITIES <!--{{{-->
=========
Level 1
Time: 17:46
 Link:[3.9. Utilities

When we get familiar with the utilities in the UNIX/Linux environment, we can see that most utilities behave the same. For instance, we know that the -h option prints a help text for almost every UNIX/Linux utility. This consistency owes to the conventions described by POSIX. POSIX defines several conventions for programmers about how we should implement our utility programs.

POSIX recommends that we implement the following argument syntax in our utility programs:

utility_name [-a][-b][-c option_argument]
    [-d|-e][-f[option_argument]][operand...] <parameter name>
Let‚Äôs break it down:

utility_name is the name of our utility followed by options and arguments.
Items inside the square brackets are optional, and we can omit them.
The -a and -b are flags that either enable or disable program features.
The -c option expects an argument with a blank character in between.
The -d and -e options separated by a pipe specify that both options are mutually exclusive.
The -f option specifies that the option and the option-argument should be placed together without a blank character in between, and the option without argument shall not treat the next argument as the option argument.
The operand can be anything that the utility processes, such as a text file.
The ellipsis (‚Ä¶) after the operand indicates that we can input zero or more operands to the utility.
Items inside the angle brackets need to be substituted by actual values.
Additionally, we can omit the brackets for the options that are required by the utility. As for complex utilities with a lot of options, we can group the options:

utility_name [-axyDnPo][-l arg][operand]
](https://www.baeldung.com/linux/posix)<!--}}}-->

VIDEOS <!--{{{-->
======
 <!--{{{-->
Time: 21:26
 [V]:[Transform you scripts with Bash Simple Cursers](https://m.youtube.com/watch?v=4G_cthFZeJ8)

Time: 22:33
 [V]:[Structure of an awk program
ø  pattern i action
ø  Awk scans a sequence of input lines one after another searching for lines that are matched.
ø  Every input line is tested against each pattern in turn
ø  For each match, the { action } is executed
ø  After every applicable { action} is executed, the next line is processed
ø  Action are enclosed in braces to distinguish them from the pattern](https://m.youtube.com/watch?v=E5aQxIdjT0M)
Time: 23:52

 [V]:[Everyone needs to learn awk](https://m.youtube.com/watch?v=jJ02kEETw70)
<!--}}}-->
[Distrotube](https://m.youtube.com/watch?v=2QXkrLVsRmk)<!--{{{-->

[NeovimTips&Tricks](https://m.youtube.com/watch?v=5bD2wcFXPk8&list=PLOe6AggsTaVsdFEX7_U9k4YDyMMNb--zx&index=9&pp=0gcJCZcCnhUGBSbi)

[How to become a VIM /G/o/d - Mental Outlaw ](https://youtu.be/3sUDa5GdCTI)
<!--}}}}}}-->

Date: Sat, 24 May 2025
[]:[Data Science in terminal with Bash and back it](https://m.youtube.com/watch)
SQLite Time: 16:15 <!--{{{-->
[L]:[SQLite version 3.22.0 2018-01-22 18:45:57
Enter "help" for usage hints.
Connected to a transient in-memory database.
Use "
'
sqlite> .help
ø  archive
Manage SQL archives: "archive --help" for details
ø auth ON|OFF
Show authorizer callbacks
ø backup ?DB? FILE
Backup DB (default "main") to FILE
ø bail on off
ø binary on|off Stop after hitting an error. Default OFF
Turn binary output on or off. Default OFF
ø cd DIRECTORY
ø  changes on|off
Change the working directory to DIRECTORY
Show number of rows changed by SeL
ø check GLOB
Fail if output since .testcase does not match
ø  clone NEWDB
Clone data into NEWDB from the existing database
ø databases
List names and files of attached databases
ø dbinfo ?DB?
Show status information about the database
ø dump ?TABLE? ...
Dump the database in an SQL text format
If TABLE specified, only dump tables matching
ø echo on|off
LIKE pattern TABLE.
Turn command echo on or off
ø eap on|off|full
Enable or disable automatic EXPLAIN QUERY PLAN
ø excel
Display the output of next command in a spreadsheet
ø exit
Exit this program
ø  expert
EXPERIMENTAL. Suggest indexes for specified queries ø fullschema ?--indent? Show schema and the content of sqlite_stat tables
headers on off
Turn display of headers on or off
ø help
Show this message](https://www.geeksforgeeks.org/introduction-to-sqlite/)
#}}}
SQLite Time: 16:18 <!--{{{-->
 [L]:[ø open ?OPTIONS? ?FILE? Close existing database and reopen FILE
ø output ?FILE?
ø print STRING...
ø  prompt MAIN CONTINUE
ø quit
ø read FILENAME
ø restore ?DB? FILE
ø save FILE
ø scanstats on|off
ø schema ?PATTERN?
The --new option starts with an empty file
Send output to FILE or stdout
Print literal STRING
Replace the standard prompts
Exit this program
Execute SQL in FILENAME
Restore content of DB (default "main") from FILE
Write in-memory database into FILE
Turn sqlite3_stmt_scanstatus() metrics on or off
Show the CREATE statements matching PATTERN
Add --indent for pretty-printing
ø selftest ?--init?
ø separator COL ?ROW?
Run tests defined in the SELFTEST table Change the column separator and optionally the row
separator for both the output mode and . import
.sha3sum ?OPTIONS...?
ø shell CMD ARGS...
. show
ø stats ?on|off?
ø system CMD ARGS...
ø tables ?TABLE?
Compute a SHA3 hash of database content
Run CMD ARGS... in a system shell
Show the current values for various settings
Show stats or turn stats on or off
Run CMD ARGS... in a system shell
List names of tables
If TABLE specified, only list tables matching
LIKE pattern TABLE.
ø testcase NAME
ø timeout MS ø timer on off
trace FILE off Begin redirecting output to 'testcase-out.txt'
Try opening locked tables for MS milliseconds
Turn SQL timer on or off
Output each SQL statement as it is run](https://www.geeksforgeeks.org/introduction-to-sqlite/)
#}}}
Time: 22:29 <!--{{{-->
 [V]:[MySQL-TheBasics](https://m.youtube.com/watch?v=Cz3WcZLRaWc&pp=0gcJCY0JAYcqIYzv)
#}}}
Date: Sun, 25 May 2025
 []:[SQL commands for SQLite. ](https://sqlite.org/lang.html)
Time: 00:36
 [L]:[Description of SQLite functions ](https://sqlite.org/lang_corefunc.html)
Time: 01:02
 [L]:[SQL Roadmap(Syllabus)](https://www.geeksforgeeks.org/sql-roadmap/)
Time: 17:32
 [L]:[JSON parser practice.](https://play.jqlang.org/)
Date: Mon, 26 May 2025
 []:[Redhat Courses ](https://www.koenig-solutions.com/redhat-training-certification-courses)
Date: Fri, 30 May 2025 09:20
  
Time:09:20
  
Time:10:00
  [gj]                       Moves cursor to the next line in display line.
[g0]                      Moves cursor to the beginning of display line.
[ g$]                     Moves cursor to the end of display line.
NETRW Time:11:20 <!--{{{-->
  :E[xplore]  {full_path}
                               To view any netrw directory 
:e[dit] {full_path/filename}
                              To open and file.
#}}}

Time:12:43
  Place below in .vimrc file to wrap words not broken.
command! -nargs=* Wrap set wrap linebreak nolist
Time: 13:21
 [V]:[<gqip>               Formats text inside paragraphs. Places cursor at end of text
<gwip>              Same as <gqip> but leaves cursor at current position.
:textwidth={N}            
                              Format text by setting the allowed number of characters per line.
:wrapmargin 
                               Format your text by specifying the number of characters from the right before wrapping.](http://vimcasts.org/episodes/hard-wrapping-text/)

Time: 14:06
 [L]:[{count}gr{char}              Replaces virtual characters under cursor with {char}. 
{count}gR{char}             Virtual replace mode
](https://vimdoc.sourceforge.net/htmldoc/change.html#fo-table)
Time: 15:00
 [L]:[{count}CTRL-G              Prints the filename and the cursor position and the file status. If count of 1 is used to print full path, if number greater than 1, the buffer is added.](https://vimdoc.sourceforge.net/htmldoc/editing.html#wildcard)
Time: 15:36
 [L]:[Some options are a list of flags.  When you want to add a flag to such an
option, without changing the existing ones, you can do it like this:
   :set guioptions+=a
Remove a flag from an option like this:
   :set guioptions-=a
This removes the 'a' flag from 'guioptions'.
Note that you should add or remove one flag at a time.  If 'guioptions' has
the value "ab", using "set guioptions-=ba" won't work, because the string "ba"
doesn't appear.](https://vimdoc.sourceforge.net/htmldoc/options.html#'patchmode')
Date: Wed, 11 Jun 2025
 []:[freecodeCamp Database In-Depth.](https://m.youtube.com/watch)
