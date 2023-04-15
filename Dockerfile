FROM python

LABEL maintainer="agmc22mx@gmail.com"
 
RUN apt-get update 

RUN apt-get install curl
RUN apt-get install -y python3
RUN apt-get install -y python3-pip
RUN pip3 install pyyaml

RUN mkdir app && cd app
 
COPY testing.py ./
COPY id_ssh id_ssh
COPY id_ssh.pub id_ssh.pub

ENV DATABASE_PASSWORD "my_password"

CMD python testing.py