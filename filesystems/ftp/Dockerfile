FROM alpine:3.21
RUN apk --no-cache add vsftpd

COPY start_vsftpd.sh /bin/start_vsftpd.sh
COPY vsftpd.conf /etc/vsftpd/vsftpd.conf

WORKDIR /
ENTRYPOINT ["/bin/start_vsftpd.sh"]