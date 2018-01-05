FROM debian:stretch

ENV MAJOR_VERSION 2.10.x
ENV VERSION 2.10.4
ENV RELEASE r31003
ENV TERADEK_SPUTNIK teradek-sputnik_${VERSION}.${RELEASE}_amd64.deb

RUN dpkg --add-architecture i386 \
    && apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y libc6-i386 lib32stdc++6 lib32z1 lib32gcc1 wget

RUN wget http://update.teradek.com/download.php?file=/Teradek/Sputnik/Software/Releases/$MAJOR_VERSION/$VERSION/$TERADEK_SPUTNIK -O /usr/local/$TERADEK_SPUTNIK

RUN dpkg -i /usr/local/$TERADEK_SPUTNIK

# Create volume friendly data directory
RUN mkdir -p /data/conf
RUN mv /etc/sputnik*.conf /data/conf/
RUN ln -s /data/conf/sputnik.conf /etc/ && ln -s /data/conf/sputnik-users.conf /etc/
VOLUME ["/data/"]

# WISHLIST how to get sputnik logs into /data ?
VOLUME ["/var/log/"]

EXPOSE 1957 5111 554

ADD start.sh /start.sh
RUN chmod +x /start.sh

CMD ["./start.sh"]


