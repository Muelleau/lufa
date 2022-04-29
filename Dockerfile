FROM openresty/openresty


COPY conf /etc/nginx/conf
COPY lua /etc/nginx/lua
EXPOSE 8080
EXPOSE 80

CMD ["nginx", "-c", "/etc/nginx/conf/nginx.conf", "-g", "daemon off;"]
