#Builds the pact broker image
docker build -t=pact_broker .

docker run --name broker_app \
  -e DB_USERNAME=YOUR_DB_USERNAME \
  -e DB_PASSWORD=YOUR_DB_PASSWORD \
  -e DB_HOST=YOUR_DB_HOST \
  -e DB_NAME=YOUR_DB_NAME \
  -w /app \
  -d pact_broker
