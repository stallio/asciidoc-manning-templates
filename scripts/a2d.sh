#!/usr/bin

# You must set BOOK_HOME to the home folder for your book project
# BOOK_HOME=$HOME/Projects/BookProjects/walls.sia4

MAKEPDF_HOME=$BOOK_HOME/AuthorInfo/AAMakePDF/

asciidoctor -T $BOOK_HOME/asciidoc/templates -a chapterFilename=$1 -b docbook45 -o $BOOK_HOME/manuscript/$1.xml $1.txt
