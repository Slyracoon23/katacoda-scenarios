## Updating Anti-Virus container

We have demonstrated how to run AV-software utilizing kubernetes and saw the DDS topic being published over the network but what if you want to make some changes? In this part we are going to update our ClamAV.

To view the current image version of the app, run a describe command against the Pods (look at the Image field): 

`kubectl describe pods`{{execute}}

To update the image of the application to  "new", use the set image command, followed by the deployment name and the new image version:

`kubectl set image deployments/clamav clamav=earlpotters/rticlamav:new`{{execute}}

The command notified the Deployment to use a different image for your app and initiated a rolling update. Check the status of the new Pods, and view the old one terminating with the get pods command:

`kubectl get pods`{{execute}}