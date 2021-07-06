FROM nginx:mainline-alpine
RUN rm /etc/nginx/conf.d/*
ADD errorworld.conf /etc/nginx/conf.d/
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
