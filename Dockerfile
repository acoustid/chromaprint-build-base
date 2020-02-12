FROM quay.io/pypa/manylinux2010_x86_64

RUN yum update -y && \
    yum install -y mingw64-gcc && \
    yum install -y glibc-devel glibc-devel.i686 libstdc++-devel libstdc++-devel.i686 glibc-common glibc-headers && \
    yum clean all

RUN curl -s -L https://github.com/Kitware/CMake/releases/download/v3.16.4/cmake-3.16.4-Linux-x86_64.tar.gz | tar xz --strip-components=1 -C /usr/local
