
docker run -d -p 5432:5432 -v /home/coneptum/gist/:/tmp/postgresql -v /home/coneptum/gist/init-master.sh:/docker-entrypoint-initdb.d/init.sh --name postgres postgres 
