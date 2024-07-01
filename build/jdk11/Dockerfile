FROM eclipse-temurin:11.0.23_9-jdk-ubi9-minimal

RUN microdnf module enable -y nodejs:20

RUN microdnf install -y \
    git \
    nodejs

RUN wget -qO- https://get.pnpm.io/install.sh | ENV="$HOME/.bashrc" SHELL="/bin/bash" bash -
