FROM centos:7
MAINTAINER jiujiude(393210556@qq.com)

#安装xp
RUN yum install -y wget && wget -O install.sh https://notdocker.xp.cn/install.sh && sh install.sh
    
RUN echo 'ping 127.0.0.1' >> /bootstrap.sh && \
    echo 'sleep infinity' >> /bootstrap.sh && \
    chmod +x /bootstrap.sh 

#给宿主机开放端口
EXPOSE 20 21 22 80 8010 443 9080 30000-30050 6379 3306

#启动启动xp 让其一直保持运行
ENTRYPOINT xp -start && ./bootstrap.sh

CMD []