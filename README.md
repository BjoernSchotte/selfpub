# selfpub

A small self-publishing platform for eBooks, suited for the needs of Geeks. Yes, you can use tools like Calibre (free) or Scrivener (commercial) for self-publishing, but geeks want to write their texts as plain-text in an editor they like and (co-)create books via git(hub).

# license

This is published under MIT license.

# 3rd party tools

The tool relies on the following 3rd party tools which you should install into your PATH:

 * [pandoc](http://johnmacfarlane.net/pandoc/)
 * [kindlegen](http://www.amazon.com/gp/feature.html?ie=UTF8&docId=1000765211) if you want to generate a Kindle eBook. Put the executable into PATH, i.e. ```/usr/bin```

Optionally, you can also use the following tools:

 * [Kindle Previewer](http://www.amazon.com/gp/feature.html/?docId=1000765261) for previewing the generated .mobi before publishing it

# Usage

This repository only provides the build environment. Your ebook will be written in another directory outside this directory and should have a special directory layout. You can refer to (and clone) this [selfpub-example](https://github.com/BjoernSchotte/selfpub-example) repository to see how to organize your ebook content like chapters, images, cover image, epub metadata and so on.

Example usage:

```
./build.sh /Users/bjoern/Code/selfpub-example de de-selfpub-is-here
```

The directory ```/Users/bjoern/Code/selfpub-example``` is an example ebook directory structure (see [example repository](https://github.com/BjoernSchotte/selfpub-example) which contains all the single chapters of the ebook in markdown format, images and so on. ```de``` is the language indicator while ```de-selfpub-is-here``` will be the basename of the output files (which generate .epub and .mobi from it).

# Supported output formats

Theoretically, every output format that's supported by pandoc will be supported, too. The build.sh shell script itself indeed provides the following output formats:

 * epub
 * kindle/mobi

