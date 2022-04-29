FROM openresty/openresty


COPY lufa.conf /etc/nginx/conf.d/lufa.conf
COPY service.conf /etc/nginx/conf.d/service.conf

EXPOSE 8080
EXPOSE 8081
