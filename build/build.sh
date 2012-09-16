#!/bin/sh

# pandoc binary, change to your needs
PANDOC=pandoc

# kindlegen binary, change to your needs
KINDLEGEN=kindlegen

# path to destination ebook dir in specific layout
DEST=$1
# language of the book, ie. "en" or "de" (will be appended to DEST path)
LANGUAGE=$2
# base filename of the output
BOOKBASEFILE=$3

# output directory and output files
DEST_OUTPUT="$DEST/out"
DEST_EPUB_COVERIMAGE="$DEST/cover/$LANGUAGE-cover.jpg"
DEST_OUTPUT_EPUB="$DEST_OUTPUT/$BOOKBASEFILE.epub"

# chapter directory
CHAPTER_DIR="$DEST/$LANGUAGE/"
CHAPTERS=""

# ePub metadata
DEST_EPUB_METADATA="$DEST/epub/metadata.xml"

# create ePub cover image
PANDOC_EPUB_COVERIMAGE="--epub-cover-image=$DEST_EPUB_COVERIMAGE"

# current working directory, will switch there later
CUR=`pwd`

echo "Building $DEST ..."

# collecting chapters
echo "Collecting chapter files ..."
for i in `ls -1 $CHAPTER_DIR`
do
  echo $i
  CHAPTER_FILE_FULLPATH="$CHAPTER_DIR/$i"
  CHAPTERS="$CHAPTERS $CHAPTER_FILE_FULLPATH"
done
echo "found chapter files: $CHAPTERS"

# generating epub format
echo "Generating ePub ..."
pandoc -f markdown -t epub --epub-metadata=$DEST_EPUB_METADATA $PANDOC_EPUB_COVERIMAGE -o $DEST_OUTPUT_EPUB $CHAPTERS

# generating kindle
echo "Generating .mobi ..."
kindlegen $DEST_OUTPUT_EPUB
