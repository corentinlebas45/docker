# docker
## Safe way to start up
## From docker-postgres :
### - cmd : docker compose up -d
### - restart the container
### - cmd : docker-compose exec app pyhton manage.py makemigrations
### - cmd : docker-compose exec app python manage.py migrate
