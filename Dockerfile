FROM ubuntu

RUN apt-get update && apt-get install --no-install-recommends -y \
 wget \
 bzip2 \
 zlib1g \
 zlib1g-dev \
 libncurses5-dev libncursesw5-dev \
 libbz2-dev \
 liblzma-dev \
 gcc\
 autoconf\
 make\

RUN wget https://github.com/samtools/samtools/releases/download/1.16.1/samtools-1.16.1.tar.bz2 &&\
 tar -xvf samtools-1.16.1.tar.bz2 &&\
 rm samtools-1.16.1.tar.bz2 &&\
 cd samtools-1.16.1 &&\
 ./configure &&\
 make &&\
 make install &&\
 mkdir /samtoolsdocker 
