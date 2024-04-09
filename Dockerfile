# a comment
FROM nginx
RUN rm /etc/nginx/nginx.conf /etc/nginx/conf.d/default.conf
COPY nginx-web-server/nginx.conf /etc/nginx
COPY nginx-web-server/index.html /usr/share/nginx/html
EXPOSE 80
EXPOSE 8081
CMD ["nginx", "-g", "daemon off;"]