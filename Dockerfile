FROM alpine:latest

MAINTAINER Sebastian Dehn <sdehn@redhat.com>

RUN apk --no-cache add curl 

COPY startup.sh /sbin/startup.sh
RUN chmod +x /sbin/startup.sh

CMD ["/sbin/startup.sh"]
