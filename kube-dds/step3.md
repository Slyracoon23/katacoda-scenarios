## Viewing DDS Output

Pods that are running inside Kubernetes are running on a private, isolated network. By default they are visible from other pods and services within the same kubernetes cluster, but not outside that network. When we use kubectl, we're interacting through an API endpoint to communicate with our application.

To view to the output coming from our clamav pod, we can use the log command! Use the following command:

`kubectl logs $(kubectl get pods --no-headers -o custom-columns=":metadata.name")`{{execute}}

To view the DDS samples coming from our pod, we will create a temporary pod to see if our dds application is publishing topics! Use the following command:

`kubectl run dds-viewer --rm -i --tty --image earlpotters/dds -- bash`{{execute}}
(this might take a while)

Hopefully a shell popped up. Run the dds application spy to view the antiVirus output

`./bin/rtiddsspy -printSample`{{execute}}

You can now see the samples being published!

When you are done do Ctrl-C and run the following command to get back to the root shell:

`exit`{{execute}}



