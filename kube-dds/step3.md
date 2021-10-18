## Viewing DDS Output

Pods that are running inside Kubernetes are running on a private, isolated network. By default they are visible from other pods and services within the same kubernetes cluster, but not outside that network. When we use kubectl, we're interacting through an API endpoint to communicate with our application.

To view to the DDS samples coming from our pod, we will create a temporary pod! Use the following command:

`kubectl logs $(kubectl get pods --no-headers -o custom-columns=":metadata.name)`{{execute}}

Since pods are isolated we will create a temporary pod to view the DDS output in another container in the next step

`kubectl run dds-viewer --rm -i --tty --image earlpotters/dds -- bash`{{execute}}

Hopefully a shell poped up.

`./bin/rtiddsspy -printSample`{{execute}}

You can know see the samples being published!

When you are done do Ctrl-C and run the following command to get back to the root shell:

`exit`{{execute}}



