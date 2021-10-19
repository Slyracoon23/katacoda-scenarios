################################################################################################################################
# https://github.com/katacoda-scenarios/kubernetes-bootcamp-scenarios/blob/5efe0d9078a0e9cd10b3a11bca124ab76e794d8f/9/env-init.sh
#########################################################################################################################################


ssh root@host01 "git clone https://github.com/Slyracoon23/remotelauncher-demo.git"
export LD_LIBRARY_PATH="/root/remotelauncher-demo/lib:${LD_LIBRARY_PATH}"
# ssh root@host01 "docker pull open-liberty:latest"

# ssh root@host01 "while [ \`minikube status &>/dev/null; echo \$?\` -ne 0 ]; do sleep 1; done && kubectl create deployment kubernetes-bootcamp --image=gcr.io/google-samples/kubernetes-bootcamp:v1 --port=8080 && echo done >> /opt/katacoda-completed"
