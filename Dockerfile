FROM alpine:latest

WORKDIR /script

COPY automate-scan.sh .
COPY list.txt .

RUN apk add --no-cache bash && chmod +x /script/automate-scan.sh
RUN apk add --no-cache nmap && apk add nmap-scripts

ENTRYPOINT [ "/script/automate-scan.sh" ]