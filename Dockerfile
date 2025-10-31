FROM nginx:alpine
WORKDIR /app
RUN rm -rf /usr/share/nginx/html/*
COPY  . .
COPY site/ /usr/share/nginx/html/
EXPOSE 90
CMD [ "nginx","-g","daemon off;" ]
