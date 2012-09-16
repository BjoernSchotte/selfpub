selfpub
=======

A small self-publishing platform for eBooks, suited for the needs of Geeks. Yes, you can use tools like Calibre (free) or Scrivener (commercial) for self-publishing, but geeks want to write their texts as plain-text in an editor they like and (co-)create books via git(hub).

# 3rd party tools

The tool relies on the following 3rd party tools which you should install into your PATH:

 * [pandoc](http://johnmacfarlane.net/pandoc/)
 * [kindlegen](http://www.amazon.com/gp/feature.html?ie=UTF8&docId=1000765211)

Optionally, you can also use the following tools:

 * [Kindle Previewer](http://www.amazon.com/gp/feature.html/?docId=1000765261) for previewing the generated .mobi before publishing it

# Usage

This repository only provides the build environment. Your ebook will be written in another directory outside this directory and should have a special directory layout. You can refer to this [selfpub-example](https://github.com/BjoernSchotte/selfpub-example) to see how to organize your ebook content like chapters, images, cover image, epub metadata and so on.
