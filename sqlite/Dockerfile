# Dockerfile
FROM postgres


#SHELL ["/bin/bash", "-c"]
RUN su postgres bash -c "psql -U postgres < /database/data.sql"
#RUN psql -U postgres < /database/data.sql