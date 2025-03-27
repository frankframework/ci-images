# Frank!Framework CI images

Auxiliary images to assist during the test pipelines in the Continuous Integration for the Frank!Framework.

## Docker Containers

These instructions will cover usage information and for the Docker container

### Prerequisites

In order to run this container you'll need Docker installed.
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
cd dbms/Postgresql
```

Now use Docker compose to build the image defined in the compose file.

```shell
docker compose build
```

The image will be created and tagged. You can now [run the container](#run-the-container).

#### Download the image

All images are prebuilt on the GitHub Container Registry, but are not publically accassible. 
This is done becouse we do not want to redistribute the images and to prevent accedental use of them.
This means that you need to be authorized with your GitHub account and have access, before you can download them.

Login by typing:
```shell
docker login ghcr.io
```

Now you can [run the containers](#run-the-container) without building them.

#### Build the image


Navigate to the directory of the desired image.

For example:

```shell
cd dbms/Postgresql
```

Now use Docker compose to build the image defined in the compose file.

```shell
docker compose build
```

#### Run the container

Navigate to the directory of the desired container.

For example:

```shell
cd dbms/Postgresql
```

Now use Docker compose to run the container defined in the compose file.

```shell
docker compose up
```

### Troubleshooting

* The Oracle images needs a prebuild base image, if you cannot download it from the private GHCR, you can follow [these instructions](https://github.com/oracle/docker-images/tree/main/OracleDatabase/SingleInstance) to build it yourself. 
* The Oracle image can't be built with Kaniko.
