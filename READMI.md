# EXASOL command line client in a docker

Docker image include EXASOL exaplus utility.

To view help run:

```bash
docker run --rm vensder/exasol-client
```

To view version run:

```bash
docker run --rm vensder/exasol-client --help
```

To run with parameters:

```bash
docker run --rm vensder/exasol-client  [-f <sql file>] [-c <connection string>] [-u <user>] [-p <passwd>] <options>
```
