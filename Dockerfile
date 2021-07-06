FROM nginx:mainline-alpine
RUN rm /etc/nginx/conf.d/*
ADD errorworld.conf /etc/nginx/conf.d/
EXPOSE 80
ENTRYPOINT ["nginx -g 'daemon off;'"]
