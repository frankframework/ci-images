FROM eclipse-temurin:11.0.27_6-jdk-jammy

RUN curl -sL https://deb.nodesource.com/setup_22.x | bash

RUN apt update && apt install -y ca-certificates curl && \
    install -m 0755 -d /etc/apt/keyrings && \
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc && \
    chmod a+r /etc/apt/keyrings/docker.asc && \
    echo \
      "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
      $(. /etc/os-release && echo \"$VERSION_CODENAME\") stable" | \
      tee /etc/apt/sources.list.d/docker.list > /dev/null && \
    apt update && apt install -y \
    docker-ce-cli \
    git \
    gnupg \
    nodejs && \
    apt clean && rm -rf /var/lib/apt/lists/*

RUN corepack enable pnpm