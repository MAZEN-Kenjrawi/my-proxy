FROM nginx:1.19-alpine

RUN apk update && apk add --no-cache nginx-mod-http-lua~1.19

VOLUME ./logs:/var/log/nginx

EXPOSE 80
