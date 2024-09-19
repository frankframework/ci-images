This project provides a docker compose file to start and run keycloak on port 8888. It will import the `iaf-test` realm 
configuration from the `shared` folder.

**Usage**:
* Make sure docker desktop is running
* run `docker compose up` in a command prompt/powershell
* you can login on http://localhost:8888 with user/password admin/admin

**Integration**:
* You can configure an application to use the following values:
  * clientId: testiaf-client
  * clientSecret: testiaf-client-pwd
  * tokenEndpoint: http://localhost:8888/auth/realms/iaf-test/protocol/openid-connect/token
* If you need more information on what is exposed where, please check out the 'Realm settings' -> 'general' tab and
click the 'OpenID Endpoint Configuration', this links to something like:
  http://localhost:8888/auth/realms/iaf-test/.well-known/openid-configuration, containing all url's for this configuration.