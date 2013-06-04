Manning Asciidoc Scripts
========================
This folder contains helpful scripts for building Manning manuscripts using Asciidoctor.

- `a2d.sh` : Converts Asciidoc to Manning Docbook.
- `mpdf.sh` : Builds Manning Docbook to PDF.
- `cofix.awk` : AWK script to (hack) fix `<calloutlist>` elements to be *inside* `<example>` elements. (This is called from `a2d.sh`.)

You'll need to set $BOOK_HOME to the home directory of your book project. These scripts assume the following directory structure:

- `$BOOK_HOME/asciidoc` : The location of your Asciidoc manuscripts.
- `$BOOK_HOME/asciidoc/templates` : The location of the custom Asciidoctor templates.
- `$BOOK_HOME/manuscript` : The location of your Docbook manuscripts.
- `$BOOK_HOME/target/pdf` : The location of the produced PDF files.

Both of these scripts take the chapter filename (with no extension) as a parameter. For example, to convert `$BOOK_HOME/asciidoc/ch04.txt` to `$BOOK_HOME/manuscript/ch04.xml`:

```sh
$ sh a2d.sh ch04
```

Likewise, to compile `$BOOK_HOME/manuscript/ch04.xml` into `$BOOK_HOME/target/pdf/ch04.pdf`:

```sh
$ sh mpdf.sh ch04
```

For convenience, I have created the following aliases (in zsh):

```sh
function mpdf() {
  sh /Users/habuma/Projects/BookProjects/walls.sia4/asciidoc/templates/scripts/mpdf.sh $1; 
}
function ad() {
  sh /Users/habuma/Projects/BookProjects/walls.sia4/asciidoc/templates/scripts/a2d.sh $1; 
}
function ap() {
  ad $1
  if (( $? == 0 )); then; mpdf $1; else; echo false; fi
}
```

These aliases enable me to build chapters with simple commands like:

```sh
$ ad ch04     # convert Asciidoc to Docbook
$ mpdf ch04   # build Docbook to PDF
$ ap ch04     # convert Asciidoc to Docbook, then build Docbook to PDF
```

Enjoy!
