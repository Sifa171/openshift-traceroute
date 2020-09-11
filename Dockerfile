FROM alpine:latest

MAINTAINER Sebastian Dehn <sdehn@redhat.com>

COPY startup.sh /sbin/startup.sh
RUN chmod +x /sbin/startup.sh

CMD ["/sbin/startup.sh"]
