## Viewing Your Deployment of Mcaffe microservice

Great! You just deployed your AV application by creating a pod. The Mcafee container is now outputing scanning data to stdout. 

To take a look at what is outputing use the `logs <pod>` command:

`kubectl logs $(kubectl get pods --no-headers -o custom-columns=":metadata.name")`{{execute}}

We see that there a lot of data being published! Let's see if we can see the dds topics. Run the command:

`kubectl run dds-viewer --rm -i --tty --image earlpotters/dds -- bash`{{execute}}
(this might take a while)

Hopefully a shell poped up. Run the dds application spy to view the antiVirus output

`./bin/rtiddsspy -printSample`{{execute}}

...don't see anything? 

How can we publish over DDS without changing the application?

Please exit the shell and go back to your host shell
