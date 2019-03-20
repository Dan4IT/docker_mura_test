# Mura Docker Project

## Taking Data Snapshots

#### Copy current local DB into the .git repo

You can create a snapshot of your local database by running the following command

```
docker-compose exec svc_muradb sh -c 'mysqldump --user=root --password=Pa55w0rd --databases muradb' > ./services/mysql/docker-entrypoint-initdb.d/muradb.sql
```

#### Loading Data Snapshot

By default anything in the `./services/mysql/docker-entrypoint-initdb.d/` directory will be run when the mysql container is started with `docker-compose up`.