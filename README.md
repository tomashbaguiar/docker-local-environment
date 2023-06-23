# Docker Local Environment

Contents of the folder:
- docker-compose files
- .env file (environment file)
- bash scripts for composing up and down the container(s)

## Running the container(s)

To run the containers execute:
```bash
$ docker compose -f docker.compose.service1.yaml \
	-f docker compose.service2.yaml \
	... \
	-f docker.compose.servicen.yaml up -d
```
or
```bash
$ bash environment-up.sh
```

## Stoping the container(s)

To remove the containers execute:
```bash
$ docker compose -f docker.compose.service1.yaml \
	-f docker compose.service2.yaml \
	... \
	-f docker.compose.servicen.yaml down
```
or
```bash
$ bash environment-down.sh
```

## Running scripts with `dry run` option

To check what the scripts would do if ran, use `--dry-run` option.
```bash
$ bash environment-down.sh --dry-run
```

