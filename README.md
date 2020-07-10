# VIM OpenQASM Syntax Highlight

OpenQASM is Open Quantum Assembly Language.

It is currently used in IBM’s quantum computers. Try one now: https://quantum-computing.ibm.com/login

## Install

Copy qasm.vim to ~/.vim/syntax

Create file ~/.vim/ftdetect/qasmvim, and add the following line to it:

~~~
au BufRead,BufNewFile *.qasm set filetype=qasm
~~~

## Next Steps

Fill out all syntax highlighting cases.

Make this an installable vim plugin.
