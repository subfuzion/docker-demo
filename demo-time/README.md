This demonstrates the difference between `CMD` and `ENTRYPOINT`.
Using `ENTRYPOINT` helps when a container is used for a specific
purpose and should generally always run the same process.

When you use `ENTRYPOINT`, you can still have a `CMD` instruction as well.
In this case, the `CMD` instruction can be used to append arguments by
default to the `ENTRYPOINT` instruction; if the user supplies arguments
to the `docker run` command, these will *replace* arguments specified by
`CMD`.


Build image:

Using CMD

    docker build -f Dockerfile.using_cmd -t get-time .

Using ENTRYPOINT

    docker build -f Dockerfile.using_entrypoint -t get-time . 
