dockerfiles
===========

About
-----

Repeatable builds for [Docker](http://www.docker.io/) containers.

> Docker is an open-source project to easily create lightweight,
> portable, self-sufficient containers from any application. The same
> container that a developer builds and tests on a laptop can run
> at scale, in production, on VMs, bare metal, OpenStack clusters,
> public clouds and more.

This is the source code for some containers that I publish in
[the Docker registry](https://index.docker.io/u/jumanjiman/).

In order to use these containerized apps, you need to have Docker
[installed on your machine](http://www.docker.io/gettingstarted/#anchor-0).


Cleanup
-------

To list Docker images on your machine, run:

    docker images

To throw away any of my containers, run:

    docker rmi jumanjiman/<name-of-image>

To throw away cached copies of containers you no longer use:

    docker rm $(docker ps -a -q)


titotest
--------

With these images plus https://github.com/dgoodwin/tito/pull/106,
I can run the full test suite for https://github.com/dgoodwin/tito
against Centos 5.9, Centos 6.4, and Fedora 20.

    # These commands tested on ubuntu and fedora
    # using all three dockerfiles.
    cd $image_name
    sudo docker build --rm -t $image_name --no-cache .

    cd
    git clone https://github.com/jumanjiman/tito.git
    cd tito
    sudo docker run --rm -i -t -v $PWD:/home/sandbox $image_name ./runtests.py \
      | tee /tmp/runtests.out ; tail -1 /tmp/runtests.out | grep OK

Without PR 106, just add `-e USER=nobody` to the above command.


License
-------

All files in this Git repo are licensed under the MIT license,
but the containers that you build from these files may
contain apps with varying licenses.
That means you can use these dockerfiles and scripts to
create private or public containers as long as you
adhere to the licenses of the containerized apps.

See the LICENSE file associated with the specific apps.
