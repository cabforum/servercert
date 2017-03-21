FROM buildpack-deps:jessie-scm
RUN apt update
RUN apt install -y \
  bundler \
  libcairo2 \
  libffi-dev \
  libgdk-pixbuf2.0-0 \
  libpango1.0-0 \
  libssl-dev \
  python \
  python-dev \
  python-lxml \
  python-pip \
  python-virtualenv \
  ruby \
  shared-mime-info

RUN mkdir /documents
WORKDIR /documents
# These two packages are too old in the Jessie repos, get newer ones. Setuptools
# needs to be upgraded before we can install from requirements.txt.
RUN pip install -U setuptools
RUN pip install -U cffi
COPY requirements.txt Gemfile Gemfile.lock /tmp/
RUN pip install -r /tmp/requirements.txt
RUN bundle install --gemfile /tmp/Gemfile
