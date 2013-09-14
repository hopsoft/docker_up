FROM ubuntu
MAINTAINER Nathan Hopkins, natehop@gmail.com

RUN apt-get -qq update

RUN apt-get -y --force-yes install wget
RUN apt-get -y --force-yes install build-essential
RUN apt-get -y --force-yes install zlib1g-dev
RUN apt-get -y --force-yes install libssl-dev
RUN apt-get -y --force-yes install libreadline6-dev
RUN apt-get -y --force-yes install libyaml-dev

RUN cd /usr/local/src; wget --quiet ftp://ftp.ruby-lang.org/pub/ruby/2.0/ruby-2.0.0-p247.tar.gz
RUN cd /usr/local/src; tar xzf ruby-2.0.0-p247.tar.gz
RUN cd /usr/local/src/ruby-2.0.0-p247; ./configure --prefix=/usr/local
RUN cd /usr/local/src/ruby-2.0.0-p247; make
RUN cd /usr/local/src/ruby-2.0.0-p247; make install
RUN rm /usr/local/src/ruby-2.0.0-p247.tar.gz

