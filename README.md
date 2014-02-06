docker-ubuntu-node-hello
=====

A boilerplate for docker based nodejs app

Basic Usage:
-----

    $ git clone
    $ vagrant up
    $ vagrant ssh
    $ cd /vagrant
    $ docker build -t ubuntu-node-hello .
    $ docker run -p 49160:8080 -d ubuntu-node-hello
    $ curl -i localhost:49160

Have fun!