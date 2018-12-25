FROM mysql:5.7

MAINTAINER 'RongkangWang'
 
ENV MYSQL_ALLOW_EMPTY_PASSWORD yes
 
COPY setup.sh /mysql/setup.sh
COPY DemoDB2.sql /mysql/DemoDB2.sql

EXPOSE 3306

RUN ["sh","/mysql/setup.sh"]
