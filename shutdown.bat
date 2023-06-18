@echo off

docker-compose -f docker-compose.yaml down
cd ..

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

cd reccommendation-service
docker-compose -f docker-compose.yaml down
cd ..

cd notification-microservice
docker-compose -f docker-compose.yaml down
cd ..

cd event-store-service
docker-compose -f docker-compose.yaml down
cd ..

cd airline-backend
docker-compose -f docker-compose.yaml down

echo All docker-compose services have been stopped.
pause