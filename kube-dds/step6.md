## Rolling an update

Let’s perform another update, and deploy image tagged as 'broken' :

`kubectl set image deployments/clamav clamav=earlpotters/rticlamav:broken`{{execute}}

Use get deployments to see the status of the deployment:

`kubectl get deployments`{{execute}}

And something is wrong… We do not have running Pod available. List the Pods again:

`kubectl get pods`{{execute}}

A describe command on the Pods should give more insights:

`kubectl describe pods`{{execute}}

There is no image called broken in the repository. Let’s roll back to our previously working version. We’ll use the rollout undo command:

`kubectl rollout undo deployments/clamav`{{execute}}

The rollout command reverted the deployment to the previous known state (tag:'new' of the image). Updates are versioned and you can revert to any previously know state of a Deployment. List again the Pods:

`kubectl get pods`{{execute}}

Single Pod is running. Check again the image deployed on the them:

`kubectl describe pods`{{execute}}

We see that the deployment is using a stable version of the app ('new'). The Rollback was successful.
