FROM pig4cloud/java:8-jre

MAINTAINER wangiegie@gmail.com

ENV TZ=Asia/Shanghai
ENV JAVA_OPTS="-Xms512m -Xmx1024m -Djava.security.egd=file:/dev/./urandom"

RUN ln -sf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN mkdir -p /tdcloud-upms

WORKDIR /tdcloud-upms

EXPOSE 4000

ADD ./target/tdcloud-upms-biz.jar ./

CMD sleep 60;java $JAVA_OPTS -jar tdcloud-upms-biz.jar
