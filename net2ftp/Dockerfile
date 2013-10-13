# net2ftp on Centos
# http://www.net2ftp.com/homepage/help-administrator.html
# http://mewbies.com/how_to_install_net2ftp_web_based_ftp_ssl_client.htm

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
ADD php_value.conf /etc/httpd/conf.d/
ADD supervisord.conf /etc/

# Export name-version-release of net2ftp.
ENV NVR net2ftp_v1.0

# Install net2ftp.
ADD http://www.net2ftp.com/download/$NVR.zip /var/www/
ADD install.sh /tmp/
RUN /tmp/install.sh

# Start Apache.
ENV LANG C
EXPOSE 80
CMD ["supervisord", "-n"]
