FROM docker.io/library/nginx:latest
ARG HTTP_PORT
RUN chgrp -R 0 /var/cache/nginx /var/run 
EXPOSE 8089
