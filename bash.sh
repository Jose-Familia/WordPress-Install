## Iniciar Docker-compose

docker-compose up 

## Iniciar Docker-compose en segundo plano

docker-compose up -d

## Detener Docker-compose

docker-compose down

## Detener Docker-compose y eliminar los contenedores

docker-compose down --rmi all

## Detener Docker-compose y eliminar los contenedores y volumenes

docker-compose down --rmi all -v

## Detener Docker-compose y eliminar los contenedores y volumenes y imagenes

docker-compose down --rmi all -v --remove-orphans

## Detener Docker-compose y eliminar los contenedores y volumenes y imagenes y redes

docker-compose down --rmi all -v --remove-orphans --remove-networks

## Detener Docker-compose y eliminar los contenedores y volumenes y imagenes y redes y imagenes sin etiquetas

docker-compose down --rmi all -v --remove-orphans --remove-networks --rmi local