FROM ubuntu:latest

WORKDIR /app

COPY scripts/system-info.sh .

RUN chmod +x system-info.sh

CMD ["./system-info.sh"]
