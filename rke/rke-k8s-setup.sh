wget -O rke https://github.com/rancher/rke/releases/download/v1.0.16/rke_linux-amd64
chmod +x rke
sudo mv rke /usr/local/bin
kubectl create -f ./docker-auth.yaml