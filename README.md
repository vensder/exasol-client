# Exasol command line client in a docker

[![Docker downloads](https://img.shields.io/docker/pulls/vensder/exasol-client)](https://hub.docker.com/r/vensder/exasol-client) [![Docker build status](https://img.shields.io/docker/build/vensder/exasol-client)](https://hub.docker.com/r/vensder/exasol-client)

Docker image includes Exasol exaplus utility.

View help:

```bash
docker run --rm vensder/exasol-client
```

or
```bash
docker run --rm vensder/exasol-client --help
```

View version:

```bash
docker run --rm vensder/exasol-client --version
```

Run with parameters:

```bash
docker run --rm vensder/exasol-client  [-f <sql file>] [-c <connection string>] [-u <user>] [-p <passwd>] <options>
```
