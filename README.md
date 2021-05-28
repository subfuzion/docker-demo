


Docker command-line reference
https://docs.docker.com/engine/reference/commandline/



# Demo 1 

Run a bash shell in a container and attach a terminal to run
commands interactively
  
    docker -it --rm --name demo debian bash

Note that this is a normal Linux environment in the container

Try to use a tool, like `git` or `curl`
* Not installed in this container, so try
  * `apt update -y && apt install -y git curl`

Copy the app into the container. From another terminal:

    docker cp $PWD/app demo:/

Build it
  * Need to install Node.js and npm
  * Save time and switch to a base image that already has them

    docker -it --rm --name demo node bash
  
Detach and reattach to the container
  * Ctrl-p, Ctrl-q
  * docker attach

Save the container to an image
  * docker commit

Create a new container from the image

# Demo 2

Introduce Dockerfile

# Demo 3

Introduce docker compose

# Demo 4

More complicated compose with replicas
