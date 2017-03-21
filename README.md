## Overview

This repository contains a copy, in [Kramdown](https://kramdown.gettalong.org/)
format, of three documents produced by the [CA/Browser Forum](https://cabforum.org/):
Baseline Requirements, Bylaws, and EV SSL Certificate Guidelines. The master
branch is intended to always match the current adopted version of all documents.

As updates are made to the master branch, they are automatically made available
at these URLs:

 - Baseline Requirements: [PDF](https://cabforum-travis-artifacts.s3-us-west-2.amazonaws.com/builds/master/BR.pdf) [HTML](https://cabforum-travis-artifacts.s3-us-west-2.amazonaws.com/builds/master/BR.html)
 - Bylaws: [PDF](https://cabforum-travis-artifacts.s3-us-west-2.amazonaws.com/builds/master/Bylaws.pdf) [HTML](https://cabforum-travis-artifacts.s3-us-west-2.amazonaws.com/builds/master/Bylaws.html)
 - EV SSL Certificate Guidelines: [PDF](https://cabforum-travis-artifacts.s3-us-west-2.amazonaws.com/builds/master/EVG.pdf) [HTML](https://cabforum-travis-artifacts.s3-us-west-2.amazonaws.com/builds/master/EVG.html)

The HTML format is usable either in a browser or in Microsoft Word.

# Building

The build process involves generating HTML documents from Kramdown, then
generating PDF documents from HTML using [Weasyprint](http://weasyprint.org/).

You'll need ruby, bundler, Python, pip, gcc, and several libraries installed.
See .travis.yml for a list of packages installable on Ubuntu. Make sure that
~/.local/bin/ is in your $PATH.

Install kramdown and weasyprint via bundler and pip, respectively:

```
bundle install
pip install --user -r requirements.txt
```

Then run make to build the documents:

```
make
```

The output is available in the output/ directory.
