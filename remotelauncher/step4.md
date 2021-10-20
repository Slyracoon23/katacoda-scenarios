## Example Clamav setup using Remote Launcher

Say you you have a machines that is running remotelauncher on your DDS setup. 
You see that your favorite AV-software, ClamAV, is available on that remote machine. 


Rather than accessing each machine individually you can now run commands over the DDS DataBus.

First change your directory to the rtilc helper script
`cd /root/remotelauncher-demo/rtirlc`{{execute}}

Now check which commands you can execuete:

`node rtirlc.js ls -l`{{execute}}

Looks like you can run Clamav!

First, export your docker_hash to an enviroment Varialbe:

`export DOCKER_HASH=$(docker ps -q)`{{execute}}

Let's start an instance:

`node rtirlc.js new --cmdline '--connextdds=ClamScanParticipantLibrary::ClamScanParticipant::ClamScanPublisher::AntiVirusWriter  --verbose --stdout  --log=/logs/clamscan.log  --recursive --database=/data .' $DOCKER_HASH/clamav`{{execute}}

Cool you kust created your instance. Remember, when an instance is created it starts in a stop state. Let's try to change the state to a RUN state.

`node rtirlc.js run -o  $DOCKER_HASH/clamav/1`{{execute}}

Your program will execute the command to completion. Do Ctrl-C to get out.
Let's see if the program is running by running ls again:

`node rtirlc.js ls -l`{{execute}}

You can see that it's in a running state. Well done!

To view the stdout, let's attach to the process


`node rtirlc.js attach -o  $DOCKER_HASH/clamav/1`{{execute}}


Cool right! Remotelaucnher has executed a process over DDS.

Checkout to see the DDS publications using rtiddsspy:

`/root/remotelauncher-demo/bin/rtiddsspy -domainId 5`{{execute}}