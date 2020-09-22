FROM registry.access.redhat.com/ubi8/ubi-minimal

MAINTAINER Sebastian Dehn <sdehn@redhat.com>

RUN microdnf update -y && rm -rf /var/cache/yum
RUN microdnf install curl traceroute nmap-ncat -y \
    && microdnf clean all
    
COPY startup.sh /sbin/startup.sh
RUN chmod +x /sbin/startup.sh

CMD ["/sbin/startup.sh"]
