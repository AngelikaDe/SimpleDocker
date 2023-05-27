FROM nginx
COPY nginx.conf / /etc/nginx/nginx.conf
COPY main.c
COPY start_server.sh .
RUN apt-get update && apt-get install -y \
    gcc \
    libfcgi-dev \
    spawn-fcgi
ENTRYPOINT ["bash", "./start_server.sh"]