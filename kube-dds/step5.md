## Verify an update

First, let’s check that the App is running. To find out the exposed IP and Port we can use describe service:

`kubectl describe services/clamav`{{execute}}


The update can be confirmed by running a rollout status command:

`kubectl rollout status deployments/clamav`{{execute}}

To view the current image version of the app, run a describe command against the Pods:

`kubectl describe pods`{{execute}}

We run now version 2 of the app (look at the Image field)
