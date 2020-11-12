#!/bin/bash -ex
sudo swapoff -a
sudo sed -i '/swap/d' /etc/fstab
systemctl is-active --quiet kubelet || sudo kubeadm init --pod-network-cidr=192.168.0.0/16