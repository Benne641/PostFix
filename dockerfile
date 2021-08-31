FROM alpine:3

RUN apk add --no-cache postfix postfix-pcre
RUN echo "maillog_file = /dev/stdout" >> /etc/postfix/main.cf
EXPOSE 25

CMD ["/usr/sbin/postfix","start-fg"]
