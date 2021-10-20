## Continued: Execute commands on your enviroment using Remote Launcher

Say you you have a bunch of machines running your favorite AV-software 


Rather than accessing each machine indivually you can not run commands over the DDS DataBus.

First change your directory to the rtilc helper script
`cd /root/remotelauncher-demo/rtirlc`{{execute}}

Now check which commands you can execuete:

`node rtirlc.js ls -l`{{execute}}

Looks like you can run Clamav!

Let's start an instance:

`node rtirlc.js new --cmdline '--connextdds=ClamScanParticipantLibrary::ClamScanParticipant::ClamScanPublisher::AntiVirusWriter  --verbose --stdout  --log=/logs/clamscan.log  --recursive --database=/data /tmp' 2782fe69098e/clamav`{{execute}}

Cool you create your instance. Remember, when an instance is created it starts in a stop state. Let's try to change the state to a RUN state.

`node rtirlc.js run -o  2782fe69098e/clamav/1`{{execute}}

To check the output try attaching it.


`node rtirlc.js attach -o  2782fe69098e/clamav/1`{{execute}}


Cool right! Remotelaucnher has executed a process over DDS.

Checkout to see the DDS publications using rtiddsspy:

`/root/remotelauncher-demo/bin/rtiddsspy -domainId 5`{{execute}}