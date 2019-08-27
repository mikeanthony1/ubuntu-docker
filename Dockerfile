#USAGE
#docker build -t mikeanthony/ubuntu .
#docker run --rm -it mikeanthony/ubuntu
#FROM mikeanthony/ubuntu:latest

#Add basic repositories
FROM ubuntu:latest
RUN apt-get update && yes|apt-get upgrade && apt install -y vim

#Turn off all Syntax highlighting
#TODO Figure out this configuration RUN /bin/bash -c unalias ls
WORKDIR /root
RUN touch /root/.vimrc && echo "syntax off" >> /root/.vimrc 