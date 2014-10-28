FROM debian:7.7
MAINTAINER Tasos Latsas "tlatsas@kodama.gr"

RUN useradd --create-home --shell /bin/bash vagrant
RUN echo vagrant | passwd --stdin vagrant

ADD https://raw.githubusercontent.com/mitchellh/vagrant/master/keys/vagrant /home/vagrant/.ssh/
ADD https://raw.githubusercontent.com/mitchellh/vagrant/master/keys/vagrant.pub /home/vagrant/.ssh/
RUN chown -R vagrant /home/vagrant/.ssh
RUN chmod 0700 /home/vagrant/.ssh

RUN apt-get update
RUN apt-get install -y openssh-server sudo wget curl
RUN apt-get install -y puppet
RUN apt-get clean

ADD sudoers.d/01_vagrant /etc/sudoers.d/
RUN chmod 0400 /etc/sudoers.d/01_vagrant
