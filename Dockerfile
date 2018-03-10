# brucefrankwang/rpi-alpine-cn:3.7
#
# A Docker image with USTC repositories for fast fetching in China, based on arm32v6/Alpine:3.7 .

FROM arm32v6/alpine:3.7

LABEL maintainer="Bruce Frank Wang <bruce.frank.wang@gmail.com>"

RUN cp /etc/apk/repositories /etc/apk/repositories.official
RUN sed -i "s/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g" /etc/apk/repositories