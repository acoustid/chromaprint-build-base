FROM quay.io/pypa/manylinux2010_x86_64

RUN yum update -y && \
    yum install -y curl wget xz && \
    yum install -y mingw64-gcc mingw64-gcc-c++ && \
    yum clean all
