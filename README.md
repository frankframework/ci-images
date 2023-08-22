# Frank!Framework CI images

Auxiliary images to assist during the test pipelines in the Continuous Integration for the Frank!Framework.

## Docker Containers

These instructions will cover usage information and for the Docker container

### Prerequisities

In order to run this container you'll need docker installed.
Instructions can be found on the [Docker documentation website](https://docs.docker.com/engine/install/).

For Linux the CLI tool (Docker engine "server") is recommended.
Docker desktop is the only option for Windows and Mac, unless you use WSL.

### Usage

Images can be created or downloaded before running them, this is done with the help of [Docker compose](https://docs.docker.com/compose/).

⚠️ *Not all images have compose files yet*

#### Create the image

Navigate to the directory of the desired image.

For example:

```shell
cd docker/dbms/Postgresql
```

Now use Docker compose to build the image defined in the compose file.

```shell
docker compose build
```

The image will be created and tagged. You can now [run the container](#Run the container).

#### Download the image

All images are prebuild on our private Nexus.
This means that you need to be authorized with your Nexus account, before you can download them.

Login by typing:
```shell
docker login private.docker.nexus.frankframework.org
```

Now you can [run the containers](#Run the container) without building them.

#### Run the container

Navigate to the directory of the desired container.

For example:

```shell
cd docker/dbms/Postgresql
```

Now use Docker compose to run the container defined in the compose file.

```shell
docker compose up
```

### Known issues

The Oracle image can't be build with Kaniko