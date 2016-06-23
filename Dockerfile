FROM centos
RUN yum install -y java-1.8.0-openjdk-devel
RUN yum install -y python-setuptools
RUN easy_install supervisor
COPY AppOne.jar /opt/AppOne.jar
COPY supervisord.conf /etc/supervisord.conf
CMD /usr/bin/supervisord -c /etc/supervisord.conf
EXPOSE 8080
