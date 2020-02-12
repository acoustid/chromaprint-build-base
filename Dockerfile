FROM quay.io/pypa/manylinux2010_x86_64

RUN yum install -y mingw64-gcc gcc-arm-linux-gnu
