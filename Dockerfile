FROM ubuntu
#ARGRUMENT it will not ask any question
ARG DEBIAN_FRONTEND=noninteractive
#Run command is used to add an instruction layer on top of base image layers
#Adding apt update instructions on top of ubuntu base image
RUN apt-get update
#Adding apache software on top of ubuntu base image
RUN apt-get -y install apache2
#ADD command will copy test.html(create test.html file) from local current directory 
#to docker image /var/www/html
ADD test.html /var/www/html
#ENTRYPOINT when a container is started with this image then it will first run 
# the command which written in front of EntryPoint
# below command starts apache in Foreground
ENTRYPOINT apachectl -D FOREGROUND
#ENV is to setup Enviornment variable
ENV name DEVOPS
