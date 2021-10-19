## Viewing the output

Let's take a look at our pods.

`kubectl get pods -A`{{execute}}

We can see that our fluent-bit daemon has launched. Let's see the logging details

`kubectl logs <POD>`

Well Done, we are parsing the output of the Mcafee! Let's see if DDS is being published.

`kubectl run dds-viewer --rm -i --tty --image earlpotters/dds -- bash`{{execute}}
