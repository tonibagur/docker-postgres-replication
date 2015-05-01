
docker run  -p 5433:5432 -v /home/coneptum/gist/:/tmp/postgresql -v /home/coneptum/gist/init-slave.sh:/docker-entrypoint-initdb.d/init.sh --name postgres --link postgres:master --name postgres-slave -ti postgres
