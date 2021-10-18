## Viewing DDS Output

Pods that are running inside Kubernetes are running on a private, isolated network. By default they are visible from other pods and services within the same kubernetes cluster, but not outside that network. When we use kubectl, we're interacting through an API endpoint to communicate with our application.

To view to logs of our pod, use the `logs <pod>` command:

`kubectl logs $(kubectl get pods --no-headers -o custom-columns=":metadata.name)`{{execute}}

Since pods are isolated we will create a temporary pod to view the DDS output in another container in the next step



