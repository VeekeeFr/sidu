# SIDU DB Web GUI
# http://topnew.net/sidu/

FROM alpine:latest

MAINTAINER VeekeeFr

# Install dependencies.
RUN apk add --update \
      apache2 \
      php \
      php-apache2 \
      php-mysql \
      php-pgsql \
      php-sqlite3 \
      && \
    rm -f /var/cache/apk/*

# Export name-version-release.
ENV SIDU_VERSION sidu61

# Install
ADD ${SIDU_VERSION}.md5sum /tmp/
RUN cd /tmp/ && \
    wget http://downloads.sourceforge.net/sidu/${SIDU_VERSION}.zip && \
    md5sum -c ${SIDU_VERSION}.md5sum && \
    unzip ${SIDU_VERSION}.zip && \
    mv ${SIDU_VERSION}/* /var/www/localhost/htdocs/ && \
    chown -R root:apache /var/www/localhost/htdocs && \
    rm -fr /tmp/*

# Start Apache.
ENV LANG C
EXPOSE 80

ENTRYPOINT ["apachectl"]

CMD ["-D", "FOREGROUND"]
