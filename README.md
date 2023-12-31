# Docker Local Environment

Contents of the folder:
- docker-compose files
- env file (environment file)
- bash scripts for composing up and down the container(s)

## Running the container(s)

To run the containers execute:
```bash
$ docker compose -f dockercompose.service1.yaml \
    -f docker composeservice2.yaml \
    .. \
    -f dockercompose.servicen.yaml up -d
```
or
```bash
$ bash environment-upsh
```

## Stoping the container(s)

To remove the containers execute:
```bash
$ docker compose -f dockercompose.service1.yaml \
    -f docker compose.service2.yaml \
    ... \
    -f docker.compose.servicen.yaml down
```
or
```bash
$ bash environment-downsh
```

## Running scripts with `dry run` option

To check what the scripts would do if ran, use `--dry-run` option
```bash
$ bash environment-downsh --dry-run
```

**NOTE: Do not run both `camunda-with-auth` and `camunda-core`.**
