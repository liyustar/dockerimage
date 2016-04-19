FROM liyustar/sshd
MAINTAINER liyustar <liyustar@gmail.com>

RUN apt-get update
RUN apt-get install -y build-essential
RUN apt-get install -y g++

# 下载Boost
RUN wget http://downloads.sourceforge.net/project/boost/boost/1.57.0/boost_1_57_0.tar.bz2?r=https%3A%2F%2Fsourceforge.net%2Fprojects%2Fboost%2Ffiles%2Fboost%2F1.57.0%2F&ts=1461050580&use_mirror=nchc -o boost_1_57_0.tar.bz2 && \
        tar jxf boost_1_57_0.tar.bz2 && \
        rm -rf boost_1_57_0.tar.bz2
# 编译Boost


# Declare
EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]
