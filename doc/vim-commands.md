# VIM

Since the 1970’s, Vi and its successor Vim have been included by default on many 
operating systems, including almost all GNU/Linux distributions.

Vim is free and open-source and is one of the most popular code editors. It can
be downloaded on [Vim official](https://www.vim.org/) .

Vim is a modal text editor, which means that it has a mode for writing text, a mode for running commands, etc.

Vim has a total of **12 different editing modes**.

The three main modes are:

* **Command mode**  is where you can run commands.This is the default.
* **Insert mode** is the mode where you insert/write your text.
* **Visual mode** is where you visually select a bunch of text so that you can run a command/operation only on that part of the text.

Basic Vim Commands
------------------

Let’s start with an easy set of Vim commands to open, save, and exit Vim.


| Commands      | Explanations                                   |
| --------------| -----------------------------------------------|
| :e filename   | Open filename for edition                      |
| :w            | Save file                                      |
| :q            | Exit Vim                                       |
| :q!           | Quit without saving                            |
| :wq           | save and quit                                  |
| :x            | Write file (if changes has been made) and exit |
| :sav filename | Saves file as filename                         |
| .             | Repeats the last change made in normal mode    |

NAVIGATION
----------

While in command mode, the following set of commands will allow you
 to easily move the cursor in the file, jump to a particular line number,
or set the cursor position at the beginning of the file.


| Commands        | Explanations                                                               |
| ----------------| ---------------------------------------------------------------------------|
| k or Up Arrow   | move the cursor position up one line                                       |
| j or Down Arrow | move the cursor down one line                                              |
| w               | move forward to next word                                                  |
| $               | move to end of the current line                                            |
| e               | move the cursor to the end of the word                                     |
| b               | move the cursor to the beginning of the word                               |
| 0(zero)         | move the cursor to the beginning of the line                               |
| G               | move the cursor to the end of the file                                     |
| gg              | move the cursor to the beginning of the file                               |
| L               | move the cursor to the bottom of the screen                                |
| :59             | move cursor to line number 59. Replace 59 by the desired line number.      |
| %               | move cursor to the matching parenthesis,square bracket,curly brace: ([{}]) |
| [[              | Jump to function start                                                     |
| [{              | Jump to block start                                                        |

JUMPS
-----

| Commands | Explanations                                  | 
| -------- | ----------------------------------------------| 
|  Ctrl+o  | navigate to the previous location in the jump |      
|  Ctrl+i  | navigate to the next location in the jump     |      
|  g;      | go to the previous change location            |      
|  g,      | go to the newer change location               |      
|  gi      | place cursor in previous Insert mode          |      
|  ]m      | jump to the beginning of the next method      |      
|  ]M      | jump to the end of the next method            |      
|  [m      | jump to the beginning of the previous method  |      
|  [M      | jump to the end of the previous method        |      

DELETION
--------


| Commands   | Explanations                                            |
| ---------- | --------------------------------------------------------|
| x(lower)   | delete character forward under cursor                   |
| X(upper)   | delete character backward under cursor                  |
| r(lower)   | replace single character under cursor                   |
| R(upper)   | enter replace mode and replace single character forward |
| dw         | delete a single word                                    |
| dd         | delete entire current line                              |
| d0         | delete to the beginning of a line                       |
| d$         | delete to the end of a line                             |
| dG         | delete to the end of the file                           |
| dgg        | delete to the beginning of the file                     |
| D          | delete until end of line                                |

NORMAL MODE -> INSERT MODE
--------------------------


| Commands | Explanations                                                       |
| ---------| -------------------------------------------------------------------|
| i        | enter insert mode                                                  |
| I        | enter insert mode at the firs character of the current line        |
| a        | enter insert mode at the right of the cursor                       |
| A        | enter insert mode at the end of the current line                   |
| o        | insert line below current line and enter insert mode               |
| O        | insert line above current line and enter insert mode               |
| cc       | Delete current line and enter insert mode                          |
| c$       | change from cursor until the end of the line                       |
| c0       | change from cursor until the start of the line                     |
| C        | Delete (change)from the cursor to end of line,and enter insert mode|

CUT,COPY&PASTE
--------------

Here are some basic Vim commands to cut, copy and paste portions of text. 
All the commands below has to be ran in command mode.


| Commands   | Explanations                                |
| ---------- | --------------------------------------------|
| y          | Copy the selected text to clipboard         |
| P(upper)   | Paste clipboard contents above current line |
| p(lower)   | Paste clipboard contents under current line |
| dd         | Cut current line                            |
| yy         | Copy current line                           |
| y$         | Copy to end of line                         |
| D          | Cut to end of line                          |

SEARCH
------

In command mode, you can easily search for any string within a file. 
This is extremely useful for developers and sysadmins alike.


| Commands                           | Explanations                                                               |
| -----------------------------------| ---------------------------------------------------------------------------|
| /word                              | Search word from top to bottom                                             |
| ?word                              | Search word from bottom to top                                             |
| *                                  | Search the word under cursor                                               |
| /\cstring                          | Search STRING or string, case insensitive                                  |
| /jo[ha]n                           | Search john or joan                                                        |
| /\< the                            | Search the, theatre or then                                                |
| /the\>                             | Search the or breathe                                                      |
| /fred\|joe                         | Search fred or joe                                                         |
| /\                                 | Search exactly 4 digits                                                    |
| /^\n\{3}                           | Find 3 empty lines                                                         |
| :bufdo /searchstr/                 | Search in all open files                                                   |
| bufdo %s/something/somethingelse/g | Search something in all the open buffers and replace it with somethingelse |

REPLACE
-------

Vim command line tool is extremely useful to replace many occurrences of a string by another within a file. 
Using more advanced commands, there are a lot of search and replace options available.


| Commands                           | Explanations                                                               |
| -----------------------------------| ---------------------------------------------------------------------------|
| :%s/old/new/g                      | Replace all occurrences of old by new in file                              |
| :%s/onward/forward/gi              | Replace onward by forward, case unsensitive                                |
| :%s/old/new/gc                     | Replace all occurrences with confirmation                                  |
| :%s/^/hello/g                      | Replace the beginning of each line by hello                                |
| :%s/$/Harry/g                      | Replace the end of each line by Harry                                      |
| :%s/onward/forward/gi              | Replace onward by forward, case unsensitive                                |
| :%s/ *$//g                         | Delete all white spaces                                                    |
| :g/string/d                        | Delete all lines containing string                                         |
| :v/string/d                        | Delete all lines containing which didn’t contain string                    |
| :s/Bill/Steve/                     | Replace the first occurrence of Bill by Steve in current line              |
| :s/Bill/Steve/g                    | Replace Bill by Steve in current line                                      |
| :%s/Bill/Steve/g                   | Replace Bill by Steve in all the file                                      |
| :%s/^M//g                          | Delete DOS carriage returns (^M)                                           |
| :%s/\r/\r/g                        | Transform DOS carriage returns in returns                                  |
| :%s#]\+>##g                        | Delete HTML tags but keeps text                                            |
| :%s/^\(.*\)\n\1$/\1/               | Delete lines which appears twice                                           |
| Ctrl+a                             | Increment number under the cursor                                          |
| Ctrl+x                             | Decrement number under cursor                                              |
| ggVGg?                             | Change text to Rot13                                                       |
| bufdo %s/something/somethingelse/g | Search something in all the open buffers and replace it with somethingelse |

CASE
----

Vim has some powerful commands to modify the case of text.
All the commands below have to be run in command mode.

| Commands        | Explanations                                                    |
| ----------------| ----------------------------------------------------------------|
| Vu              | Lowercase line                                                  |
| VU              | Uppercase line                                                  |
| g~~             | Invert case                                                     |
| vEU             | Switch word to uppercase                                        |
| vE~             | Modify word case                                                |
| ggguG           | Set all text to lowercase                                       |
| gggUG           | Set all text to uppercase                                       |
| :set ignorecase | Ignore case in searches                                         |
| :set smartcase  | Ignore case in searches excepted if an uppercase letter is used |
| :%s/\<./\u&/g   | Sets first letter of each word to uppercase                     |
| :%s/\<./\l&/g   | Sets first letter of each word to lowercase                     |
| :%s/.*/\u&      | Sets first letter of each line to uppercase                     |
| :%s/.*/\l&      | Sets first letter of each line to lowercase                     |

TABS
----

One of my favorite Vim options is the ability to use tabs to edit various files
at the same time. The following Vim commands will let you open,
close, and organize your tabs for better productivity.

| Commands            | Explanations                  |
| --------------------| ------------------------------|
| :tabnew             | Creates a new tab             |
| :tabedit filename   | open "filename" in a new tab  |
| gt                  | move to next tab              |
| gT                  | move to previous tab          |
| #gt                 | move to tab number #          |
| :tabfirst           | Show first tab                |
| :tablast            | Show last tab                 |
| :tabm n(position)   | Rearrange tabs                |
| :tabdo %s/foo/bar/g | Execute a command in all tabs |
| :tab ball           | Puts all open files in tabs   |
| :new abc.txt        | Edit abc.txt in new window    |

SPLIT
-----

Vim allows you to split the screen horizontally or vertically,
so you can edit many files at once using the insert mode.

| Commands              | Explanations                                     |
| --------------------- | -------------------------------------------------|
| :e filename           | Edit filename in current window                  |
| :split filename       | Split the window and open filename(Horizontally) |
| :split filename       | Split the window and open filename               |
| :split filename       | Split the window and open filename               |
| ctrl-w arrow          | navigate between split  window                   |
| ctrl-w ctrl-w         | Puts cursor in next window                       |
| ctrl-w_               | Maximize current window vertically               |
| ctrl-w=               | Gives the same size to all windows               |
| 10 ctrl-w+            | Add 10 lines to current window                   |
| :vsplit or vsp file   | open "file" and split window vertically          |
| :sview file           | Same as :split in readonly mode                  |
| :hide                 | Close current window                             |
| :­nly                 | Close all windows, excepted current              |
| :b 2                  | Open #2 in this window                           |

BUFFERS
-------

| Commands          | Explanations                              |
| ------------------| ------------------------------------------|
| :enew             | open a new empty buffer                   |
| :e filename       | open "filename" in a new buffer           |
| :badd filename    | at "filename" in buffer in the background |
| :bnext or :bn     | go to the next buffer                     |
| :bfirst or :bf    | jump to the first buffer                  |
| :blast or :bl     | jump to the last buffer                   |
| :bprevious or :bp | go to the previous buffer                 |
| :b filename       | go to buffer by "filename"                |
| :ls               | list all open buffers                     |
| :bd               | delete a buffer(close a file)             |
| :b#               | go to buffer at index #                   |

FILE EXPLORER
-------------

Vim features a built in file explorer, 
which allows you to explorer the content of your server, 
without exiting the text editor.


| Commands               | Explanations                                       |
| -----------------------| ---------------------------------------------------|
| :e .                   | Open integrated file explorer                      |
| :Sex                   | Split window and open integrated file explorer     |
| :Sex!                  | Same as :Sex but split window vertically           |
| :browse e              | Graphical file explorer                            |
| :ls                    | List buffers                                       |
| :cd ..                 | Move to parent directory                           |
| :args                  | List files                                         |
| :args *.php            | Open file list                                     |
| :grep expression *.php | Returns a list of .php files containing expression |
| gf                     | Open file name under cursor                        |

SHELL COMMANDS
-----------------------

Vim is installed by default on most Unix based operating systems, 
including Mac OS and most GNU/Linux distros. 
It therefore feature various commands that allows you to interact with the OS.

- Linux/MacOS

| Commands | Explanations                                           |
| ---------| -------------------------------------------------------|
| :!pwd    | Execute the pwd unix command, then returns to Vi       |
| :!ls     | Execute the ls unix command, then returns to VI        |
| :!!pwd   | Execute the pwd unix command and insert output in file |
| :bash    | Temporary returns to shell                             |

- Windows

| Commands | Explanations                                    |
| ---------| ------------------------------------------------|
| :!cd     | Execute the cd dos command, then returns to Vi  |
| :!dir    | Execute the dir dos command, then returns to Vi |

ALIGNMENT
---------

In command mode,
you can quickly and easily align a file’s lines for better clarity.

| Commands   | Explanations                            |
| ---------- | ----------------------------------------|
| :%!fmt     | Align all lines                         |
| !}fmt      | Align all lines at the current position |
| 5!!fmt     | Align the next 5 lines                  |

Auto-Completion
---------------

Vim can use external dictionaries to provide auto-completion. 
This can be a real time saver, so pay attention to the commands below 
if you want to speed up your workflow.


| Commands                                  | Explanations                |
| ------------------------------------------| ----------------------------|
| Ctrl+n Ctrl+p (To be used in insert mode) | Complete word               |
| Ctrl+x Ctrl+l                             | Complete line               |
| :set dictionary=dict                      | Define dict as a dictionary |
| Ctrl+x Ctrl+k                             | Complete with dictionary    |

READ AND WRITE FILES
--------------------

Vim is clearly one of the most powerful text editors available. 
This section shows how you can manipulate files, 
insert the content of a file into another, and export portions of a file 
into a new file.


| Commands           | Explanations                               |
| -------------------| -------------------------------------------|
| :1,10 w outfile    | Saves lines 1 to 10 in outfile             |
| :1,10 w >> outfile | Appends lines 1 to 10 to outfile           |
| :r infile          | Insert the content of infile               |
| :23r infile        | Insert the content of infile under line 23 |

MARKS
-----

When editing large files, 
it can be tricky to move in the file and remember important sections. 
Happily, Vim allows its users to create marks that can easily be accessed later. 
No need to remember a dozen of line numbers anymore!

| Command    | Explanations                    |
| ---------- | --------------------------------|
| m {a-z}    | Marks current position as {a-z} |
| ‘ {a-z}    | Move to position {a-z}          |
| ”          | Move to previous position       |

ABBREVIATIONS
-------------

This little known trick lets you define abbreviations 
that can be reused later and as many times as needed.

| Commands                   | Explanations                                     |
| ---------------------------| -------------------------------------------------|
| :ab mail mail@provider.org | Define mail as abbreviation of mail@provider.org |

TEXT INDENTATION
----------------

Text indentation is vital when it comes to code readability. Luckily, 
Vim has a set of commands for the text editor to indent your lines 
in a clear and readable manner.


| Commands          | Explanations                        |
| ------------------| ------------------------------------|
| :set autoindent   | Turn on auto-indent                 |
| :set smartindent  | Turn on intelligent auto-indent     |
| :set shiftwidth=4 | Defines 4 spaces as indent size     |
| ctrl-t, ctrl-d    | Indent/un-indent in insert mode     |
| >>                | Indent                              |
| <<                | Un-indent                           |
| =%                | Indent the code between parenthesis |
| 1GVG=             | Indent the whole file               |

CTAGS
-----

only if you ctags installed. ctags allow quick access across files seeing
for definitions and functions.


| Commands      | Explanations                              |
| --------------| ------------------------------------------|
| Ctrl+]        | go to definition                          |
| Ctrl+t        | jump back from the definition             |
| Ctrl+w Ctrl+] | Open the definition in a horizontal split |
