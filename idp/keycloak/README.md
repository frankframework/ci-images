# Keycloak

This image creates a Keycloak instance with the following configuration:
- Exposed port: `9080`
- Admin user
  - Username: `frank@framework.org`
  - Password: `frank`
- Imported realm
  - Realm name: `ff-test`
  - Client name: `ff-console`
  - Client secret: `SdSD1lxXfeAXcgoWEukKj3xkFJJJwWjJGHq3dhJuaLa`

Create a new user and set the application up to work with the `ff-console` client, and you should be able to log in and start playing around.
