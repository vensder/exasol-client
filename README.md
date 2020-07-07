# Exasol command line client in a docker

[![Docker downloads](https://img.shields.io/docker/pulls/vensder/exasol-client)](https://hub.docker.com/r/vensder/exasol-client) [![Docker build status](https://img.shields.io/docker/build/vensder/exasol-client)](https://hub.docker.com/r/vensder/exasol-client)

Docker image includes Exasol EXAplus utility.

EXAplus is the database client for the EXASolution Database.

You don't need to install the Java Runtime Environment and Perl to run this utility in the docker.

Supported versions of the Exasol EXAplus utility:

* 6.0.1
* 6.0.4
* 6.0.5
* 6.0.15
* 6.1.7
* 6.2.5

## Run the specific version

The docker images tags correspond with the EXAplus utility versions.

```bash
docker run --rm vensder/exasol-client:6.1.7 --version
```

## View help

```bash
docker run --rm vensder/exasol-client
```

or

```bash
docker run --rm vensder/exasol-client --help
```

## View version

```bash
docker run --rm vensder/exasol-client --version
```

## Run with parameters

```bash
docker run --rm vensder/exasol-client  [-f <sql file>] [-c <connection string>] [-u <user>] [-p <passwd>] <options>
```
