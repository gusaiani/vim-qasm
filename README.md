# VIM QASM Syntax Highlight

Everyone is welcome to contribute, please submit your pull requests.

## Install

Copy qasm.vim to ~/.vim/syntax

Create file ~/.vim/ftdetect/qasmvim, and add the following line to it:

~~~
au BufRead,BufNewFile *.qasm set filetype=qasm
~~~

## Next Steps

Fill out the syntax highlighting cases.

Make this an installable vim package.
