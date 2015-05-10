CURRENT_PATH=$(pwd)
DATA_VOLUME=/volumes/postgres_slave
docker run -d --name postgres_ambassador --expose 5432 -e POSTGRES_PORT_5432_TCP=tcp://10.0.6.1:5432 svendowideit/ambassador
docker run  -p 5432:5432 -v $DATA_VOLUME:/var/lib/postgresql -v $DATA_VOLUME/data:/var/lib/postgresql/data -v $CURRENT_PATH:/tmp/postgresql -v $CURRENT_PATH/init-slave.sh:/docker-entrypoint-initdb.d/init.sh --name postgres --link postgres_ambassador:master --name postgres_slave -ti -e POSTGRES_PASSWORD=********* postgres
