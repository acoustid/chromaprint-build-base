FROM buildpack-deps:xenial

RUN apt-get update -y && \
    apt-get install -y cmake yasn && \
    apt-get install -y gcc-multilib g++-multilib && \
    apt-get install -y mingw-w64 && \
    apt-get install -y gcc-multilib-arm-linux-gnueabihf g++-multilib-arm-linux-gnueabihf
