docker build -t ceenikc/multi-client:latest -t ceenikc/multi-client:$SHA -f ./client/Dockerfile ./client
docker build -t ceenikc/multi-server:latest -t ceenikc/multi-server:$SHA -f ./server/Dockerfile ./server
docker build -t ceenikc/multi-worker:latest -t ceenikc/multi-worker:$SHA -f ./worker/Dockerfile ./worker

docker push ceenikc/multi-client:latest
docker push ceenikc/multi-client:$SHA

docker push ceenikc/multi-server:latest
docker push ceenikc/multi-server:$SHA

docker push ceenikc/multi-worker:latest
docker push ceenikc/multi-worker:$SHA

kubectl apply -f k8s

kubectl set image deployments/server-deployment server=ceenikc/multi-server:$SHA
kubectl set image deployments/client-deployment client=ceenikc/multi-client:$SHA
kubectl set image deployments/worker-deployment worker=ceenikc/multi-worker:$SHA
