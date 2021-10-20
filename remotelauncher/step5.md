## Wrapup Remote Launcher

To cleanup remotelauncher properly, delete any processes on any remotemahcines you want to destroy using the command:

` node rtirlc.js delete $DOCKER_HASH/clamav/1`{{execute}}

Now, you can delete the machine following this command:

`docker-compose down`{{execute}}

Congratuations you were able to do a AV-Scan with remotelauncher!