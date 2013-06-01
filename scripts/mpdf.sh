#!/usr/bin

# You must set BOOK_HOME to the home folder for your book project
# BOOK_HOME=/Users/habuma/Projects/BookProjects/walls.sia4

MAKEPDF_HOME=$BOOK_HOME/AuthorInfo/AAMakePDF/

pushd .
cd $BOOK_HOME/manuscript
mkdir -p $BOOK_HOME/target/pdf
sh $MAKEPDF_HOME/AAMakePDF.sh $BOOK_HOME/manuscript/$1.xml $BOOK_HOME/target/pdf/$1.pdf $MAKEPDF_HOME
rm $BOOK_HOME/manuscript/$1.xml.temp.xml
popd
