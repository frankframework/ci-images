FROM eclipse-temurin:17.0.11_9-jdk-ubi9-minimal

RUN microdnf module enable -y nodejs:20

RUN microdnf install -y \
    git \
    nodejs

RUN npm install -g pnpm
