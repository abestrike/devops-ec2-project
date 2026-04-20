FROM ubuntu:latest

WORKDIR /app

COPY system-info.sh .

RUN chmod +x system-info.sh

CMD ["./system-info.sh"]
