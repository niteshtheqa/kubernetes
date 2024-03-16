kubeadm init

# COPY THE COMMAND TO RUN IN NODES & SAVE IN NOTEPAD
mkdir -p $HOME/.kube
cp -i /etc/kubernetes/admin.conf $HOME/.kube/config


chown $(id -u):$(id -g) $HOME/.kube/config

kubectl apply -f https://raw.githubusercontent.com/cor...

kubectl apply -f https://raw.githubusercontent.com/cor... > /result.txt