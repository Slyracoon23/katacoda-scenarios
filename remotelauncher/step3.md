## Simple capabilities layout using Remote Launcher

Great, remotelauncher is running. Now we can go over all the things you can do with remotelauncher

Change directory to the Remotelauncher helper script:

`cd /root/remotelauncher-demo/rtirlc`{{execute}}

View all the machines that are running remotelauncher Daemon by running...

`node rtirlc.js ls -l`{{execute}}

You should see your host named host01 and a contianer hash. 

The ls commands show you allow the connected machines that remotelauncher is able to connect and run. In this case your docker container can run ping, spy and clamav.

Verify that the container hash is the same as docker ps:

`docker ps`{{execute}}

To list the full range of commands you can also do -h:

`node rtirlc.js -h`{{execute}}


