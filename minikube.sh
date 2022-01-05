#minikube

#UPDATE UPGRADE
sudo apt-get update -y
sudo apt-get upgrade -y

#ETC
sudo apt-get install curl
sudo apt-get install apt-transport-https

#VIRTUALBOX
sudo apt install virtualbox virtualbox-ext-pack

#WGET MINIKUBE
wget https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo cp minikube-linux-amd64 /usr/local/bin/minikube
sudo chmod 755 /usr/local/bin/minikube

#Kubectl
curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl
chmod +x ./kubectl
sudo mv ./kubectl /usr/local/bin/kubectl
kubectl version -o json

#Step 5: Start Minikube
minikube start
kubectl config view
kubectl cluster-info
kubectl get nodes
kubectl get pod
minikube ssh
exit
minikube stop

minikube status
minikube addons list
minikube dashboard

minikube dashboard --url

#kubectl
#
$#install kubectl
#
kubectl version
kubectl version --client
kubectl options
kubectl describe services

#criar um novo deploy
kubectl create deployment hello-minikube --image=k8s.gcr.io/echoserver:1.10 deployment.apps/hello-minikube created 

#abrir outto terminal e abrir dashboard
minikube dashboard

#Expor(Abrir) a porta para acesso remoto
kubectl expose deployment hello-minikube --type=NodePort --port=8080

#Exibir Pods
kubectl get pod

#Encontrar a UEL de acesso da aplicação
minikube service hello-minikube --url

#deletando serviços
kubectl delete services hello-minikube
kubectl delete deployment hello-minikube