FROM alpine:latest

MAINTAINER Sebastian Dehn <sdehn@redhat.com>

COPY startup.sh /sbin/startup.sh

CMD ["startup.sh"]
