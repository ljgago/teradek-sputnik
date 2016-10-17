FROM debian:jessie

ENV TERADEK_SPUTNIK teradek-sputnik_2.6.1.r27115_amd64.deb

ADD ./$TERADEK_SPUTNIK /usr/local/

RUN dpkg --add-architecture i386 \
    && apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y libc6-i386 lib32stdc++6 lib32z1 lib32gcc1 \
    && dpkg -i /usr/local/$TERADEK_SPUTNIK

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


