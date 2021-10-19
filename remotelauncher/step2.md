## Start Remote Launcher

Hopefully you multi-Enviroment is deployed, verify by running docker-compose ps:

`docker-compose ps`{{execute}}

You should see a container running.

That container is running a Remotelauncher Daemon that is able to do RPC calls.

To make your current host able to communicate with other machines you need to run the Remotelauncher application.

First, change direcotires the the remotelauncher application.
`cd remotelauncher-demo/opt/rtiremotelauncher/`{{execute}}

Then, launch it in the background using the following command:

`./bin/rtiremotelauncherd -config ./etc/rtiremotelauncher/rtiremotelauncherd.conf &`{{execute}}

Verifiy it is running probably by running:

????

