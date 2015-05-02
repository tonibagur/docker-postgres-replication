# PostgreSQL Streaming Replication With Docker

This is a work in progress based mainly on this gist:https://gist.github.com/mattupstate/c6a99f7e03eff86f170e. Many thanks mattupstate! 

The *.txt files here hold user and database parameters. Specifically, `replication.txt` contains the user/role and password to use for replication. Whereas `database.txt` contains an initial database, user/role and password to create on the master.

Run the master:

    $ ./start-master.sh
    
Wait for it to start up completely. Start the slave:

    $ ./start-slave.sh
    
And then you have two running postgresql instances running in replication mode:
* postgresql: the master instance(read/write mode)
* postgresql-slave: the hotstandby instance(read only mode)
