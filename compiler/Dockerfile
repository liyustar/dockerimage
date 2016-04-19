FROM liyustar/sshd
MAINTAINER liyustar <liyustar@gmail.com>

# RUN apt-get update
RUN apt-get install -y build-essential
RUN apt-get install -y g++

# 下载Boost
RUN wget http://nchc.dl.sourceforge.net/project/boost/boost/1.57.0/boost_1_57_0.tar.bz2 -o boost_1_57_0.tar.bz2 && \
        tar jxf boost_1_57_0.tar.bz2 && \
        rm -rf boost_1_57_0.tar.bz2
# 编译Boost


# Declare
EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]
