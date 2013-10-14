# SIDU DB Web GUI on Centos
# http://topnew.net/sidu/

# https://index.docker.io/_/centos/
FROM centos

# http://jumanjiman.github.io/
MAINTAINER Paul Morgan <jumanjiman@gmail.com>

# Update the base image.
#RUN yum -y update

# Install dependencies.
RUN rpm -Uvh http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
RUN yum -y install httpd php vim-enhanced bash-completion unzip supervisor

# Remove yum metadata.
RUN yum clean all

# Configure apache.
ADD supervisord.conf /etc/

# Export name-version-release.
ENV NVR sidu50

# Install.
ADD $NVR.md5sum /var/www/
ADD install.sh /tmp/
ADD http://downloads.sourceforge.net/sidu/$NVR.zip /var/www/
RUN /tmp/install.sh

# Start Apache.
ENV LANG C
EXPOSE 80
CMD ["supervisord", "-n"]
