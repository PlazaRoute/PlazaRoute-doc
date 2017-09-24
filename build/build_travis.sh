#!/bin/bash
DATE=`date +"%y%m%d"`
JOBNAME="PlazaNav-$DATE"
LATEXCMD="xelatex -shell-escape -jobname=$JOBNAME  -interaction=nonstopmode"
# Shell escape is needed for pygments syntax highlighting
$LATEXCMD index.tex
# build bibliography
bibtex $JOBNAME.aux
# build again with bibliography
$LATEXCMD index.tex
# build a third time to fix potential numbering changes
$LATEXCMD index.tex
