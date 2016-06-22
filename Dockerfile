FROM centos:7

#
# dependend processes
#
WORKDIR /process

ADD asset/ /process

CMD ./process_1.sh /process & \
    sleep 3  && \
    ./process_2.sh /process ;
