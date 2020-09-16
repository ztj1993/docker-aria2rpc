FROM alpine:3.11.6

LABEL maintainer="Ztj <ztj1993@gmail.com>"

RUN apk add --no-cache bash aria2
ADD entrypoint.sh /bin/entrypoint.sh
RUN chmod +x /bin/entrypoint.sh
ENTRYPOINT ["/bin/entrypoint.sh"]

EXPOSE 6800

CMD ["aria2c", "--conf-path=/etc/aria2c/env.conf"]
