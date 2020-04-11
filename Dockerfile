FROM ubuntu:latest
MAINTAINER vincentpham <vincentpham1993@gmail.com>
RUN apt-get update ;\
apt-get -y install git curl vim cockpit;
CMD reboot -f;\
systemctl start cockpit;\
ufw allow 9090;\
EXPOSE 9090
VOLUME /proc /proc
