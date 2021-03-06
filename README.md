# Mura Docker Project

Adapted from:

[gregmoser/mura-docker-project](https://github.com/gregmoser/mura-docker-project)
[blueriver/docker-muracms](https://github.com/blueriver/docker-muracms)

## Taking Data Snapshots

#### Copy current local DB into the .git repo

You can create a snapshot of your local database by running the following command

```
docker-compose exec svc_muradb sh -c 'mysqldump --add-drop-database --add-drop-table --skip-comments --disable-keys  --user=root --password=Pa55w0rd --databases muradb' > ./vol_muradb/muradb.sql
```

#### Loading Data Snapshot

By default anything in the `./vol_muradb/` directory will be run when the mysql container is started with `docker-compose up`.