FROM centos:centos7
MAINTAINER xtdqueue20230322
#RUN yum install -y  java-1.7.0-openjdk.x86_64 wget tar
ENV CATALINA_HOME /opt/appwar
ENV PATH $CATALINA_HOME/bin:$PATH
WORKDIR $CATALINA_HOME

ENV TOMCAT_MAJOR_VERSION 8
ENV TOMCAT_MINOR_VERSION 8.5.85
ENV JAVA_HOME /opt/appwar/jdk1.8.0_351
ENV JAVA_JRE /opt/appwar/jdk1.8.0_351/jre
ENV CLASSPATH $JAVA_HOME/lib:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar:$JAVA_HOME/lib:$JRE_HOME/lib
ENV PATH $JAVA_HOME/bin:$PATH
#RUN apt-get install vim
#RUN wget -O /opt/tomcat7.tar.gz  http://www.us.apache.org/dist/tomcat/tomcat-7/v${TOMCAT_MINOR_VERSION}/bin/apache-tomcat-${TOMCAT_MINOR_VERSION}.tar.gz  -q && \
#     tar -xzf /opt/tomcat7.tar.gz && \
#     rm /opt/tomcat7.tar.gz && \
#     ln -s apache-tomcat-$TOMCAT_MINOR_VERSION tomcat
COPY ./tomcat8 /opt/appwar
COPY ./jdk1.8.0_351 /opt/appwar/jdk1.8.0_351

EXPOSE 8080
CMD ["catalina.sh","run"]
