FROM quay.io/pypa/manylinux2010_x86_64

RUN yum update -y && \
    yum install -y curl wget && \
    yum install -y mingw64-gcc mingw64-gcc-c++ && \
    yum clean all

RUN curl -s -L https://github.com/Kitware/CMake/releases/download/v3.16.4/cmake-3.16.4-Linux-x86_64.tar.gz | tar xz --strip-components=1 -C /usr/local

RUN cd /tmp && \
    curl -s -L http://crosstool-ng.org/download/crosstool-ng/crosstool-ng-1.24.0.tar.bz2 | tar xj && \
    cd crosstool-ng && \
    ./configure --prefix=/usr/local && \
    make && \
    make install && \
    cd / && \
    rm -rf /tmp/crosstool-ng
