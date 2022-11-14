## What is the Prolog-Python Database
This database is made by combining the Python programming language and the Prolog programming language. The database utilizes both languages through translation of code in order to relay information to the user. The database contains information about characters from the game Overwatch (1). The database provides information about specific characters in the game and traits surronding them, such as affiliation (hero/villain), sex, name, etc..

## How Does it Work?
The code works by utilizing docker containers in order to run the program [(https://www.docker.com/products/docker-desktop/)]. Once you have docker working, follow the command in order to build and run the container:

Make sure to build the docker contain in the `Prolog-Python-Database` repository.

```
docker build -t cs201team5 .
```

The container may take a while to build. After the container is built, run the container with the following command:

```
docker run --rm -v "%cd%/src":/root -it cs201team5
```

Once inside the container, run this command only once:

```
chmod +x bridge.sh
```

Now run this command to use and access the database.

```
.sh script: ./bridge.sh
```