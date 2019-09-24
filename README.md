SIDU
===========

About
-----

Repeatable builds for [Docker](http://www.docker.io/) containers.

> Docker is an open-source project to easily create lightweight,
> portable, self-sufficient containers from any application. The same
> container that a developer builds and tests on a laptop can run
> at scale, in production, on VMs, bare metal, OpenStack clusters,
> public clouds and more.

This is the source code for a container that I now maintain in
[the Docker registry](https://index.docker.io/u/veekee/).

In order to use this containerized app, you need to have Docker
[installed on your machine](http://www.docker.io/gettingstarted/#anchor-0).


Cleanup
-------

To list Docker images on your machine, run:
    docker images

To throw away any of my containers, run:
    docker rmi veekee/<name-of-image>

To throw away cached copies of containers you no longer use:
    docker rm $(docker ps -a -q)

License
-------

All files in this Git repo are licensed under the MIT license,
but the containers that you build from these files may
contain apps with varying licenses.
That means you can use this Dockerfile to
create private or public containers as long as you
adhere to the licenses of the containerized app.
