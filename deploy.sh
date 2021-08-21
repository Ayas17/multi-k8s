docker build -t mkulaa1/multi-client:latest -t mkulaa1/multi-client:$SHA -f ./client/Dockerfile ./client
docker build -t mkulaa1/multi-server:latest -t mkulaa1/multi-server:$SHA -f ./server/Dockerfile ./server
docker build -t mkulaa1/multi-worker:latest -t mkulaa1/multi-worker:$SHA -f ./worker/Dockerfile ./worker

docker push mkulaa1/multi-client:latest
docker push mkulaa1/multi-server:latest
docker push mkulaa1/multi-worker:latest

docker push mkulaa1/multi-client:$SHA
docker push mkulaa1/multi-server:$SHA
docker push mkulaa1/multi-worker:$SHA

kubectl apply -f k8s
kubectl set image deployments/server-deployment server=mkulaa1/multi-server:$SHA
kubectl set image deployments/client-deployment client=mkulaa1/client-server:$SHA
kubectl set image deployments/worker-deployment worker=mkulaa1/multi-worker:$SHA