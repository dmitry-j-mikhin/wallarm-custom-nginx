FROM wallarm/node:4.4

COPY debs/ /tmp
RUN apt-get -y update \
    && apt-get -y install /tmp/*.deb \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

EXPOSE 80 443

CMD ["/usr/local/bin/init"]