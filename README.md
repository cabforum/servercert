## Overview

This repository contains a copy, in [Kramdown](https://kramdown.gettalong.org/)
format, of three documents produced by the [CA/Browser Forum](https://cabforum.org/):
Baseline Requirements, Bylaws, and EV SSL Certificate Guidelines. The main
branch is intended to always match the current adopted version of all documents.

As updates are made to the main branch, they are automatically made available
at these URLs:

 - Baseline Requirements: [PDF](https://cabforum-travis-artifacts.s3-us-west-2.amazonaws.com/builds/main/BR.pdf) [HTML](https://cabforum-travis-artifacts.s3-us-west-2.amazonaws.com/builds/main/BR.html)
 - Bylaws: [PDF](https://cabforum-travis-artifacts.s3-us-west-2.amazonaws.com/builds/main/Bylaws.pdf) [HTML](https://cabforum-travis-artifacts.s3-us-west-2.amazonaws.com/builds/main/Bylaws.html)
 - EV SSL Certificate Guidelines: [PDF](https://cabforum-travis-artifacts.s3-us-west-2.amazonaws.com/builds/main/EVG.pdf) [HTML](https://cabforum-travis-artifacts.s3-us-west-2.amazonaws.com/builds/main/EVG.html)

The HTML format is usable either in a browser or in Microsoft Word.

# Building

The build process involves generating HTML documents from kramdown, then
generating PDF documents from HTML using [Weasyprint](http://weasyprint.org/).
These have a number of other dependencies that can be time-consuming to install.
The fastest way to start is to use a Docker image, which works on Windows and
macOS, and Linux:

    git clone https://github.com/cabforum/documents/
    cd documents
    docker run --rm --volume $PWD:/documents j4cob/cabforum make

This will automatically download a Docker image containing the necessary
dependencies, and run `make` in a container based off that image.
The output will be available in the output/ directory. This docker command
mounts the current directory as a volume, so it will build from the version of
the documents in the current directory. You can edit files on the Docker host,
and use Docker just for building.

If you want to install the dependencies without Docker, you'll need ruby,
bundler, Python, pip, gcc, and several libraries installed.
See Dockerfile for a list of packages installable on Debian. Make sure that
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

# Building the Docker image locally

If you'd like to build a copy of the Docker image locally, for instance, to use
a different version of Weasyprint or kramdown, run:

    docker build --tag my_cabforum_tag .
    docker run --rm --volume $PWD:/documents my_cabforum_tag make

