@echo off

cd user-microservice
docker-compose -f docker-compose.yaml down
cd ..

cd reservation-microservice
docker-compose -f docker-compose.yaml down
cd ..

cd accommodation-microservice
docker-compose -f docker-compose.yaml down
cd ..

cd api-gateway
docker-compose -f docker-compose.yaml down
cd ..

cd local-env
docker-compose -f docker-compose.yaml down
cd ..

cd recommendation-microservice
docker-compose -f docker-compose.yaml down
cd ..

cd notification-microservice
docker-compose -f docker-compose.yaml down
cd ..

echo All docker-compose services have been stopped.
pause