## Start Remotelauncher

Hopefully you multi-docker enviroment is deployed, verify by running docker-compose ps:

`docker-compose ps`{{execute}}

You should see a container is up and running.

That container you just deployed is running a Remotelauncher Daemon that is able to do RPC calls.

To make your current host able to communicate with other machines you need to run the Remotelauncher application as well.

First, change direcotiry to the remotelauncher application.
`cd remotelauncher-demo/opt/rtiremotelauncher/`{{execute}}

Then, launch it in the background using the following command:

`./bin/rtiremotelauncherd -config ./etc/rtiremotelauncher/rtiremotelauncherd.conf &`{{execute}}

Verifiy it is running probably by running:

`ps`{{execute}}

