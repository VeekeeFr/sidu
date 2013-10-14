net2ftp
=======

About
-----

net2ftp is a web-based ftp client.

This container has the full version of net2ftp, including plugins,
running on Apache and Centos 6.4.

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


License
-------

This dockerfile and scripts are licensed under MIT, but
net2ftp and its plugins are licensed as indicated in:

    src/LICENSE.txt
