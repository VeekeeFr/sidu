# https://index.docker.io/_/centos/
FROM mattdm/fedora:f20

# http://jumanjiman.github.io/
MAINTAINER Paul Morgan <jumanjiman@gmail.com>

# Install dependencies.
RUN yum -y install git GitPython rpm-build python-devel python-nose libxslt asciidoc python-setuptools tar

# Remove yum metadata.
RUN yum clean all

RUN useradd sandbox
RUN git config --global user.email "sandbox@example.com"
RUN git config --global user.name  "sandbox"

USER sandbox
VOLUME ["/home/sandbox"]
WORKDIR /home/sandbox

ENV LANG C
CMD ["/bin/bash"]
