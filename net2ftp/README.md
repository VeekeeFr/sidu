net2ftp
=======

About
-----

[![](https://badge.imagelayers.io/jumanjiman/net2ftp.svg)](https://imagelayers.io/?images=jumanjiman/net2ftp:latest 'View image size and layers')&nbsp;
[![Docker Registry](https://img.shields.io/docker/pulls/jumanjiman/net2ftp.svg)](https://registry.hub.docker.com/u/jumanjiman/net2ftp)&nbsp;

net2ftp is a web-based ftp client.

This container has the full version of net2ftp, including plugins,
running on Apache and Alpine Linux.

* Enabled: [user features](http://www.net2ftp.com/homepage/features-user.html)
* Disabled: [admin features](http://www.net2ftp.com/homepage/features-administrator.html)
* [Screenshots](http://www.net2ftp.com/homepage/screenshots.html)


Recommended usage
-----------------

This container is available in
[the Docker registry](https://index.docker.io/u/jumanjiman/).

To run the container and make it available at port 80:

    docker run -d -p 80:80 -h foo.example.com jumanjiman/net2ftp

To run the container and make it available at port 81:

    docker run -d -p 81:80 -h foo.example.com jumanjiman/net2ftp


Known issues
------------

**Use this container for anonymous ftp sessions only!**
This container does not yet implement SSL.
Perhaps in the future I'll add Docker volume support to
enable a person to use the container with an SSL private key
and signed cert. For now, I'm playing with Docker, and
net2ftp is an interesting project.


License
-------

This dockerfile and scripts are licensed under MIT, but
net2ftp and its plugins are licensed as indicated in:

    src/LICENSE.txt
