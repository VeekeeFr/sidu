DB Web GUI
==========

About
-----

[![](https://badge.imagelayers.io/veekee/sidu.svg)](https://imagelayers.io/?images=veekee/sidu:latest 'View image size and layers')&nbsp;
[![Docker Registry](https://img.shields.io/docker/pulls/veekee/sidu.svg)](https://registry.hub.docker.com/u/veekee/sidu)&nbsp;

SIDU is a web-based SQL client.

This container has SIDU 6.1,
running on Apache and Ubuntu Linux
using proper, official php base image.

* [Features](http://topnew.net/sidu/sidu-feature.php)
* [Screenshots](http://topnew.net/sidu/sidu-screenshot.php)


Recommended usage
-----------------

This container is available in
[the Docker registry](https://index.docker.io/u/veekee/).

To run the container and make it available at port 80:

    docker run -d -p 80:80 -h foo.example.com veekee/sidu

To run the container and make it available at port 81:

    docker run -d -p 81:80 -h foo.example.com veekee/sidu


Known issues
------------

**Use this container on private networks only or using a separated SSL endpoint !**
This container does not yet implement SSL.

License
-------

This project Dockerfile are licensed under MIT, and based on [jumanjiman's work](https://github.com/jumanjiman).
[SIDU](http://topnew.net/sidu/) doesn't carry a license anymore.