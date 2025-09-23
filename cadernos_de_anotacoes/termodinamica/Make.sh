#!/bin/sh

on_error ( ) $@ || exit $?

export TEXINPUTS="${PWD}/src//:"
export BIBINPUTS="${PWD}/src:"

[ -d "tmp" ] || mkdir -p "tmp"
cd tmp
on_error latexmk \
   -pdflatex \
   -silent -quiet \
   -f -g \
   -logfilewarninglist \
   "main.tex"

[ -d "../bin" ] || mkdir -p "../bin"
mv "main.pdf" ../bin

exit 0
