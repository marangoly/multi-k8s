docker build -t marangoly/multi-client:latest -t marangoly/multi-client:$SHA -f ./client/Dockerfile ./client
docker build -t marangoly/multi-server:latest -t marangoly/multi-server:$SHA -f ./server/Dockerfile ./server
docker build -t marangoly/multi-worker:latest -t marangoly/multi-worker:$SHA -f ./worker/Dockerfile ./worker

docker push marangoly/multi-client:latest
docker push marangoly/multi-server:latest
docker push marangoly/multi-worker:latest
docker push marangoly/multi-client:$SHA
docker push marangoly/multi-server:$SHA
docker push marangoly/multi-worker:$SHA

kubectl apply -f k8s