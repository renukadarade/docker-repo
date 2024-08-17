FROM ubuntu:18.04
WORKDIR /opt
RUN apt-get update -y  
RUN apt-get install curl -y
RUN apt-get install apache2 -y
RUN apt-get install -y wget unzip
RUN wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.93/bin/apache-tomcat-9.0.93.zip \
&& unzip apache-tomcat-9.0.93.zip
RUN chmod +x apache-tomcat-9.0.93/bin/catalina.sh
RUN wget https://get.jenkins.io/war-stable/2.462.1/jenkins.war
EXPOSE 8080 
CMD ["apache-tomcat-9.0.93/bin/catalina.sh","run"]
 

