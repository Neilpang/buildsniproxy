FROM ubuntu

RUN apt-get update \
  && apt-get install -qqy \
  git \
  build-essential \
  autotools-dev \
  cdbs \
  debhelper \
  dh-autoreconf \
  dpkg-dev \
  gettext \
  libev-dev \
  libpcre3-dev \
  libudns-dev \
  pkg-config \
  fakeroot \
  devscripts \
  && apt-get clean


VOLUME /out

RUN mkdir -p /root \
  && git clone https://github.com/Neilpang/sniproxy.git \
  && cd sniproxy \
  && ./autogen.sh && dpkg-buildpackage \
  && cd .. \
  && rm -rf sniproxy \
  && mkdir -p /out


CMD cp /sniproxy*.deb /out
  
  
  

