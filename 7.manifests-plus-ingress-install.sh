kubectl apply -f kubernetes-ingress/deployments/common/crds
# kubectl apply -f kubernetes-ingress/deployments/common/crds-v1beta1
kubectl apply -f kubernetes-ingress/deployments/common/ns-and-sa.yaml
kubectl apply -f kubernetes-ingress/deployments/rbac/rbac.yaml
kubectl apply -f kubernetes-ingress/deployments/rbac/ap-rbac.yaml
kubectl apply -n nginx-ingress -f k8s-apps/7.2-nginx.rocks-cert.yaml
kubectl apply -f kubernetes-ingress/deployments/common/ingress-class.yaml
kubectl apply -f kubernetes-ingress/deployments/common/nginx-config.yaml

kubectl apply -n nginx-ingress -f docker-regcred.yaml

kubectl apply -f kubernetes-ingress/deployments/deployment/nginx-plus-ingress.yaml
