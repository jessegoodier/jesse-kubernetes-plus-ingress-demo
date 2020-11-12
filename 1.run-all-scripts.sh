#!/bin/bash -ex
sh 2.docker-install.sh
sudo sh 3.apt-installs-kube.sh
sh 4.kubeadm.sh
sh 5.kubectl-config.sh
sh 6.cni-network.sh
sh 7.manifests-plus-ingress-install.sh
sh 8.prometheus.sh
sh 9.grafana.sh
