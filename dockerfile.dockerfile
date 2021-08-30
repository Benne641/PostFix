# Author: David Bennett
# Email: david.b.bennett@floridadep.gov

FROM centos:8.3.2011
RUN yum update -y
RUN yum remove sendmail -y
#RUN hostnamectl set-hostname depmail.docker
#add hostname and IP entries to /etc/hosts
RUN yum install postfix -y
RUN yum install mailx -y 
RUN yum install telnet -y
RUN systemctl start postfix
#RUN systemctl enable postfix
CMD service postfix start && tail -F /var/log/maillog
