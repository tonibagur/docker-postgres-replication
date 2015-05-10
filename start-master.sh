CURRENT_PATH=$(pwd)
DATA_VOLUME=/volumes/postgres_master
docker run -d -p 5432:5432 -v $DATA_VOLUME:/var/lib/postgresql -v $DATA_VOLUME/data:/var/lib/postgresql/data -v $CURRENT_PATH:/tmp/postgresql -v $CURRENT_PATH/init-master.sh:/docker-entrypoint-initdb.d/init.sh  --name postgres_master -e POSTGRES_PASSWORD=********* postgres 
