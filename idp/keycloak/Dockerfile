FROM keycloak/keycloak:26.5

ENV KC_HTTP_PORT=9080 \
    KC_BOOTSTRAP_ADMIN_USERNAME=frank@framework.org \
    KC_BOOTSTRAP_ADMIN_PASSWORD=frank \
    KC_HEALTH_ENABLED=true

COPY import/ /opt/keycloak/data/import/

HEALTHCHECK --timeout=10s CMD { printf 'HEAD /health/ready HTTP/1.0\r\n\r\n' >&0; grep 'HTTP/1.0 200'; } 0<>/dev/tcp/localhost/9000

CMD ["start-dev", "--import-realm"]
