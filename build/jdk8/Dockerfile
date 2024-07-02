FROM eclipse-temurin:8u412-b08-jdk-ubi9-minimal

RUN microdnf module enable -y nodejs:20

RUN microdnf install -y \
    git \
    nodejs

RUN npm install -g pnpm
