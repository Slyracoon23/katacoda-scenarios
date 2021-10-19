## Viewing DDS

Let's take a look at our pods.

`kubectl get pods -A`{{execute}}

We can see that our fluent-bit daemon has launched. Let's see the logging details

`kubectl logs fluent-bit-<hash> -n logging`

Well done! We are parsing the output of the Mcafee! Let's see if DDS is being published.

`kubectl run dds-viewer --rm -i --tty --image earlpotters/dds -- bash`{{execute}}

`./bin/rtiddsspy -printSample`{{execute}}

