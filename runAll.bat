@echo off

docker-compose -f docker-compose.yaml up -d
cd ..

cd user-microservice
docker-compose -f docker-compose.yaml up -d
cd ..

cd reservation-microservice
docker-compose -f docker-compose.yaml up -d
cd ..

cd accommodation-microservice
docker-compose -f docker-compose.yaml up -d
cd ..

cd api-gateway
docker-compose -f docker-compose.yaml up -d
cd ..

cd airline-backend
docker-compose -f docker-compose.yaml up -d
cd ..

cd reccommendation-service
docker-compose -f docker-compose.yaml up -d
cd ..

cd event-store-service
docker-compose -f docker-compose.yaml up -d
cd ..

echo All docker-compose files have been started.
pause
