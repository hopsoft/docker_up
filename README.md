# DockerUp

Get up and running with [Docker](http://www.docker.io/) in no time flat.

## Requirements

* [Virtual Box](https://www.virtualbox.org/)
* [Vagrant](http://www.vagrantup.com/)

Note: This project uses the `precise64` box provided by Vagrant.

## Usage

```shell
git clone git@github.com:hopsoft/docker_up.git
cd docker_up
vagrant up
vagrant ssh
```

### Hello World

Note: The the first run downloads the Docker image. Subsequent runs are lightning fast.

```shell
sudo docker run ubuntu /bin/echo hello world
sudo docker run ubuntu /bin/echo hello world
```

### Build and run an Image from a Dockerfile

In this example we compile Ruby 2.0 from source and then run it inside the Docker container.

```shell
sudo docker build -t example/ruby-2.0 /vagrant
sudo docker run -i -t example/ruby-2.0 /bin/bash
ruby -v
```

__Thats it!__
Poke around the project to see just how easy this stuff is.

Now start writing some [Dockerfiles](http://docs.docker.io/en/latest/use/builder/)!

