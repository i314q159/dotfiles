docker run -d -p 6379:6379 --name redis docker.io/library/redis
docker exec -it redis redis-cli
