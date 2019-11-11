## install docker

apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg2 \
    software-properties-common -y

curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/debian \
   $(lsb_release -cs) \
   stable"

apt-get update

apt-get install docker-ce docker-ce-cli containerd.io -y


## install kubeadm

echo 'deb  http://apt.kubernetes.io/  kubernetes-xenial  main' >> /etc/apt/sources.list.d/kubernetes.list

curl -s \
         https://packages.cloud.google.com/apt/doc/apt-key.gpg \
         | apt-key add -

apt-get update

apt-get install -y kubeadm kubelet kubectl


## join cluster

10.0.0.2s