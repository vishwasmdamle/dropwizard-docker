FROM centos
RUN yum install -y java-1.8.0-openjdk-devel
COPY AppOne.jar /opt/AppOne.jar
CMD java -jar /opt/AppOne.jar server
EXPOSE 8080
