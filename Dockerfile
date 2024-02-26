FROM klakegg/hugo:0.95.0-ci AS build
WORKDIR /build
COPY . ./
RUN hugo --minify

FROM alpine:3.16
RUN apk --no-cache add \
    nginx
WORKDIR /app
COPY --from=build /build/public ./
COPY docker-nginx.conf /etc/nginx/nginx.conf
EXPOSE 80
ENTRYPOINT ["nginx", "-g", "daemon off;"]
