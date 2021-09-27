FROM docker.io/library/nginx:latest
ARG HTTP_PORT
RUN chgrp -R 0 /var/cache/nginx /var/run && \
	chmod -R g=u /var/cache/nginx /var/run && \
    sed -i "s/80/8089/" /etc/nginx/conf.d/default.conf
EXPOSE 8089