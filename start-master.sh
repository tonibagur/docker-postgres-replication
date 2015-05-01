CURRENT_PATH=$(pwd)
docker run -d -p 5432:5432 -v $CURRENT_PATH:/tmp/postgresql -v $CURRENT_PATH/init-master.sh:/docker-entrypoint-initdb.d/init.sh --name postgres postgres 
