## Viewing Your Deployment of Mcaffe microservice

Great! You just deployed your AV application by creating a pod. This performed a few things for you:

THe Mcafee container is outputing scanning data to stdout. 

To take a look at what is outputing use the `logs <pod>` command:

`kubectl logs $(kubectl get pods --no-headers -o custom-columns=":metadata.name)`{{execute}}

We see that there a lot of data being published but if we run the following command we see nothing is publishing?

`kubectl run dds-viewer --rm -i --tty --image earlpotters/dds -- bash`{{execute}}

How can we get it into DDS withouth changing the application?

