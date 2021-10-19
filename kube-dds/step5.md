## Verify an update

First, let’s check that the App's description changed. To find out we can use describe deployment:

`kubectl describe deployments/clamav`{{execute}}


The update can be confirmed by running a rollout status command:

`kubectl rollout status deployments/clamav`{{execute}}

To view the current image version of the app, run a describe command against the Pods:

`kubectl describe pods`{{execute}}

We are now running a newer version of the app (look at the Image field)
