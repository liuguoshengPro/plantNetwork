FROM mysql/mysql-server:8.0.29

MAINTAINER tdcloud(wangiegie@gmail.com)

ENV TZ=Asia/Shanghai

RUN ln -sf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

COPY ./1schema.sql /docker-entrypoint-initdb.d

COPY ./2tdcloudx.sql /docker-entrypoint-initdb.d

COPY ./3tdcloudx_codegen.sql /docker-entrypoint-initdb.d

