FROM alpine:latest
RUN apk add --no-cache curl bash
WORKDIR /tmp
ADD sendtelegram.sh /tmp
RUN chmod +x /tmp/sendtelegram.sh
ENTRYPOINT ["./sendtelegram.sh"]