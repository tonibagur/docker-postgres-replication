CURRENT_PATH=$(pwd)
docker run  -p 5433:5432 -v $CURRENT_PATH:/tmp/postgresql -v $CURRENT_PATH/init-slave.sh:/docker-entrypoint-initdb.d/init.sh --name postgres --link postgres:master --name postgres-slave -ti postgres
