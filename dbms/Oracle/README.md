To use the Oracle database, you first need to create a base image using a Dockerfile from https://github.com/oracle/docker-images/tree/main/OracleDatabase/SingleInstance

Use the following command in this directory to build an image for the Oracle database with the testuser.

```shell
docker compose build
```

Build and start the Oracle container by using the docker-compose.yml file using:

```shell
docker compose up
```

It will take a while for the Oracle container to have started, it will state that the database is ready for use when it is ready.
You will need to add the following to your context.xml file, which can be found at iaf\test\src\main\webapp\META-INF\, to connect to the database in the container.

	<Resource
		name="jdbc/ibis4test-oracle"
		factory="org.apache.naming.factory.BeanFactory"
		type="oracle.jdbc.xa.client.OracleXADataSource"
		URL="jdbc:oracle:thin:@host.docker.internal:1521:XE"
		user="${testiaf_user/username:-testiaf_user}"
		password="${testiaf_user/password:-testiaf_user00}"
	/>
