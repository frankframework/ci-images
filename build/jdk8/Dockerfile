FROM eclipse-temurin:8u432-b06-jdk-jammy

RUN curl -sL https://deb.nodesource.com/setup_22.x | bash

RUN apt update && apt install -y ca-certificates curl gnupg && \
    install -m 0755 -d /etc/apt/keyrings && \
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc && \
    chmod a+r /etc/apt/keyrings/docker.asc && \
    echo \
      "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
      $(. /etc/os-release && echo \"$VERSION_CODENAME\") stable" | \
      tee /etc/apt/sources.list.d/docker.list > /dev/null && \
    curl -fsSL https://dl-ssl.google.com/linux/linux_signing_key.pub | gpg --dearmor -o /etc/apt/keyrings/google-chrome.gpg && \
    echo "deb [arch=amd64 signed-by=/etc/apt/keyrings/google-chrome.gpg] http://dl.google.com/linux/chrome/deb/ stable main" | \
      tee /etc/apt/sources.list.d/google-chrome.list > /dev/null && \
    curl -fsSL https://deb.nodesource.com/setup_22.x | bash - && \
    apt update && apt install -y \
    docker-ce-cli \
    git \
    libgtk2.0-0 \
    libgtk-3-0 \
    libgbm-dev \
    libnotify-dev \
    libnss3 \
    libxss1 \
    libasound2 \
    libxtst6 \
    xauth \
    xvfb \
    nodejs \
    google-chrome-stable && \
    apt clean && rm -rf /var/lib/apt/lists/*

RUN corepack enable pnpm
