DB Web GUI
==========

About
-----

SIDU is a web-based SQL client.

This container has SIDU 5.0,
running on Apache and Alpine Linux.

* [Features](http://topnew.net/sidu/sidu-feature.php)
* [Screenshots](http://topnew.net/sidu/sidu-screenshot.php)


Recommended usage
-----------------

This container is available in
[the Docker registry](https://index.docker.io/u/jumanjiman/).

To run the container and make it available at port 80:

    docker run -d -p 80:80 -h foo.example.com jumanjiman/sidu

To run the container and make it available at port 81:

    docker run -d -p 81:80 -h foo.example.com jumanjiman/sidu


Known issues
------------

**Use this container on private networks only!**
This container does not yet implement SSL.
Perhaps in the future I'll add Docker volume support to
enable a person to use the container with an SSL private key
and signed cert. For now, I'm playing with Docker, and
SIDU is an interesting project.


License
-------

This dockerfile and scripts are licensed under MIT, but
SIDU is licensed under New BSD as indicated in:

    src/LICENSE
