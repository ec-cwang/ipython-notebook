# ipython-notebook

A Docker-rized container of ipython notebook.

## Usage

- Clone the project
- Build the image: `docker build -t ipython/notebook .`
- Start the container: `docker-compose up`
- Open a web browser, go to localhost:9999

> If you don't like using docker-compose, you can use traditional `docker run blabla` to start the container, but you have to specify all the parameters there in the command
> The port on the host can be modified, as well as the password (passed as a env variable)
