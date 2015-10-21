FROM java:openjdk-8

RUN wget -qO- "https://github.com/skavanagh/KeyBox/releases/download/v2.84.00/keybox-jetty-v2.84_00.tar.gz" \
    | tar -xzC /opt

EXPOSE 8443/tcp
VOLUME ["/a/keydb"]

ADD start.sh /a/start.sh
RUN chmod +x /a/start.sh

ENTRYPOINT  ["/a/start.sh"]