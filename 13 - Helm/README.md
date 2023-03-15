kubectl create ns website

helm upgrade --install -n website website chart/

kubectl -n website get all

# Change something in the helm chart

helm upgrade --install -n website website chart/

helm -n website history website

helm -n website rollback website 1
