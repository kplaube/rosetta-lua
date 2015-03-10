Rosetta Lua
===========
[![Build Status](https://travis-ci.org/kplaube/rosetta-lua.svg?branch=master)](https://travis-ci.org/kplaube/rosetta-lua)

In order to practice Lua, I'm doing some [rosettacode.org](http://rosettacode.org/) tasks with the language.
Please, feel free to contribute, add or fix some piece of code!

Why Lua?
-----------

Why not? Lua has been used in a serie of industrial applications, like embedded systems and game development. Besides, it was created in Brazil, which makes me very proud.

It's powerful, fast, lightweight, free and open-source. [Read more about](http://www.lua.org/about.html)!

Installing
-----------

Lua runs on all flavors of Unix and Windows, on mobile devices (running Android, iOS, BREW, Symbian, Windows Phone), on embedded microprocessors (such as ARM and Rabbit, for applications like Lego MindStorms), on IBM mainframes, etc.

If you are a Windows user, the easiest way to use Lua is by using the [LuaDist](http://luadist.org/), a multi-platform distribution of Lua with batteries included.

Mac OS X users can install the language through **brew**:

``$ brew install lua``

Linux users can use their own package repository to install it. E.g. with Ubuntu, you can do it through **aptitude**:

``$ sudo aptitude install lua5.2``

A task can be executed with the command:

``$ lua hello-world/text.lua``

LuaRocks and other dependencies
----------------------------------------

Some tasks have dependencies (like a small web server or dealing with GUI). To handle these dependencies with glamour, you'll need to install the following tools:

* [LuaRocks](http://www.luarocks.org/): a package management system for Lua;
* [LÖVE](https://love2d.org/): a framework you can use to make 2D games in Lua.

After installing those guys, you can resolve project dependencies through **make**:

``$ make install``

Writing your own code
---------------------------

You don't need a fancy text editor to write Lua code. With a simple Notepad you can do all the job.

But, I can't miss the opportunity to recommend you the [Vim](http://www.vim.org/) editor, with [syntastic](https://github.com/scrooloose/syntastic) plugin.

With these folks, your life will be colorful :)

Tasks done
-------------

* [Binary search](http://rosettacode.org/wiki/Binary_search)
* [Guess the number](http://rosettacode.org/wiki/Guess_the_number)
* [Guess the number/With feedback](http://rosettacode.org/wiki/Guess_the_number/With_Feedback)
* [Hello world/Graphical](http://rosettacode.org/wiki/Hello_world/Graphical)
* [Hello world/Newbie](http://rosettacode.org/wiki/Hello_world/Newbie)
* [Hello world/Newline omission](http://rosettacode.org/wiki/Hello_world/Newline_omission)
* [Hello world/Standard error](http://rosettacode.org/wiki/Hello_world/Standard_error)
* [Hello world/Text](http://rosettacode.org/wiki/Hello_world/Text)
* [Hello world/Web server](http://rosettacode.org/wiki/Hello_world/Web_server)
* [Sorting algorithms/Insertion sort](http://rosettacode.org/wiki/Sorting_algorithms/Insertion_sort)
* [Sorting algorithms/Selection sort](http://rosettacode.org/wiki/Sorting_algorithms/Selection_sort)
