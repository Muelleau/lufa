FROM openresty/openresty


COPY ./default.conf /etc/nginx/conf.d/default.conf

EXPOSE 8080
