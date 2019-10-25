include .env

clean:
   docker rm ${CONTAINER_NAME}

compose:
   docker-compose up -d

start:
   docker start ${CONTAINER_NAME}

stop:
   docker stop ${CONTAINER_NAME}

log:
   docker logs -f --details ${CONTAINER_NAME} --tail 1000

sh:
   docker exec -ti ${CONTAINER_NAME} bash

exec:
   docker exec -it ${CONTAINER_NAME} ${IMAGE}