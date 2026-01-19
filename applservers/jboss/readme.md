# Building the JBoss image

The JBoss image consists of two different parts, the builder image and the runtime image.
In order to use the runtime image you must have built an image first.

Prerequisites
 - [RedHat catalog account](https://catalog.redhat.com/en)
 - [FrankFramework Nexus account](https://nexus.frankframework.org)
 - Advanced Container image knowledge (build, tag, push)

## Quay

In short: download the images from the RedHat registry, run our build script, and upload them to our nexus.

The following command can be used to create the 'prebuild' image.  
`docker build -t private.docker.nexus.frankframework.org/jboss-eap-8/eap81-openjdk21-runtime-openshift-rhel9:1.0.0.GA-prebuild .`

And this command will upload it to our nexus  
`docker push private.docker.nexus.frankframework.org/jboss-eap-8/eap81-openjdk21-runtime-openshift-rhel9:1.0.0.GA-prebuild`

