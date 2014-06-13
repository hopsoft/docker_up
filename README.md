# DockerUp

Get up and running with [Docker](http://www.docker.io/) in no time flat.

## Requirements

* [Virtual Box](https://www.virtualbox.org/)
* [Vagrant](http://www.vagrantup.com/)

Note: This project uses the **trusty** box provided by Ubuntu.

## Usage

```shell
git clone git@github.com:hopsoft/docker_up.git
cd docker_up
vagrant up
vagrant ssh
docker -v
```

### Hello World

Note: The the first run downloads the Docker image. Subsequent runs are much faster.

```shell
sudo docker run ubuntu echo 'Hello from inside a Docker container!'
```

### Build and run an Image from a Dockerfile

In this example we create a Docker image named `example/hello`, then run the `hello` command in the container.

```shell
sudo docker build -t example/hello /vagrant
sudo docker run example/hello
```

__Thats it!__
Poke around the project to see just how easy this stuff is.

Now start writing some [Dockerfiles](http://docs.docker.com/reference/builder/).

