#FROM plant-network/java:8-jre
FROM openjdk:8

MAINTAINER 17621831561@163.com

ENV TZ=Asia/Shanghai
ENV JAVA_OPTS="-Xms512m -Xmx1024m -Djava.security.egd=file:/dev/./urandom"

RUN ln -sf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone


WORKDIR /tdcloud-upms

EXPOSE 4000

#ADD ./target/tdcloud-upms-biz.jar ./
ADD tdcloud-upms-biz.jar tdcloud-upms-biz.jar

# 运行jar包
RUN bash -c 'touch /tdcloud-upms-biz.jar'
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/tdcloud-upms-biz.jar"]
#CMD sleep 60;java $JAVA_OPTS -jar tdcloud-codegen.jar