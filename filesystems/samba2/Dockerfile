FROM scitotec/test-samba-share:0.1.0

COPY config/* /etc/samba/

CMD ["-p", "-u", "frankframework;pass_123", "-s", "home;/tmp/shares/home;yes;no;yes;frankframework"]
