## Viewing Your Deployment of ClamAV microservice

Great! You just deployed your first application by creating a deployment. This performed a few things for you:

- searched for a suitable node where an instance of the application could be run (we have only 1 available node)
- scheduled the application to run on that Node
- configured the cluster to reschedule the instance on a new Node when needed

To list your deployments use the `get deployments` command:

`kubectl get deployments`{{execute}}

We see that there is 1 deployment running a single instance of your app. The instance is running inside a Docker container on your node.

To view to logs of our pod, use the `logs <pod>` command:

`kubectl logs $(kubectl get pods --no-headers -o custom-columns=":metadata.name")`{{execute}}

As you can see, the application is scanning for any viruses on the host machine.

