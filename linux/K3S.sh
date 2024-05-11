# Kubernetes Commands

# View all nodes
k3s kubectl get node

##View all namespaces
k3s kubectl get namespaces

##View pods for specific namespace (ix-rsnapshot in this case)
k3s kubectl get -n ix-rsnapshot pods

##Exec into pod (Rsnapshot in this case) - use pod name from command above
k3s kubectl exec -n ix-rsnapshot --stdin --tty rsnapshot-ix-chart-7dc59bd888-nfkjf -- /bin/bash

##Restart all pods in a namespace
k3s kubectl -n ix-rsnapshot rollout restart deploy

# Delete Namespace
kubectl delete namespace [your-namespace]

