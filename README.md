# Pentaho BI Server 5.3

> [http://community.pentaho.com/](http://community.pentaho.com/)
> Version: 5.3

## How to use (start containers one by one)

### Start a PostgreSQL instance

Run this command in terminal, adapt credentials and ports as needed
```
docker run --name pentaho-db -p 5432:5432 -e POSTGRES_USER=pentaho -e POSTGRES_PASSWORD=secret -d postgres:9.3
```
or run script
```
./scripts/docker-run-postgresql.sh
```
### Start Pentaho BI Server

```
docker run --name pentaho-server -p 8080:8080 --link pentaho-db:postgres -e DB_USER=pentaho -e DB_PASS=secret -d smartstudio/pentaho:5.3
```
or run script
```
./scripts/docker-run-pentaho.sh
```

## How to use (start with docker-compose )

```
docker-compose up -d
```

### Open Admin

Open [http://localhost:8080/](http://localhost:8080/)

* User Name: admin
* Password: password

## Environment Variables

### PostgreSQL

You have to set the following variable:

* `POSTGRES_PASSWORD`

See: [https://registry.hub.docker.com/_/postgres/](https://registry.hub.docker.com/_/postgres/)

### Pentaho

* `DB_HOST` - default: linked `postgres` container
* `DB_USER` - default: "postgres"
* `DB_PASS` - default: "password"
* `DB_PORT` - default: 5432
* `DB_SERVICE_NAME` - default: empty. See TODO
* `TIMEZONE` - default: "Europe/Madrid"
* `LOCALE` - default: "es_ES.UTF-8 UTF-8"
* `LANG` - default: es_ES.utf8
* `INSTALL_PLUGINS` - default: false
