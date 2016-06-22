FROM centos:7

MAINTAINER Fred Thiele <ferdy_news@gmx.de>

WORKDIR /process

ADD asset/ /process

CMD ./process_1.sh /process & \
    sleep 3  && \
    ./process_2.sh /process ;
