# If you need to use a different base image, please choose the linux/amd64 platform variant and include the fingerprint so that we pin the exact image.
FROM ubuntu:24.04@sha256:c35e29c9450151419d9448b0fd75374fec4fff364a27f176fb458d472dfc9e54
ENV DEBIAN_FRONTEND=noninteractive

# These are support tools that should go into all tasks. Don't alter these unless you need to adjust for a different base image.
RUN apt-get update && apt-get install -y git python3 python3-pip bash curl wget && rm -rf /var/lib/apt/lists/*
RUN ln -sf /usr/bin/python3 /usr/bin/python
RUN mkdir -p /logs
RUN apt-get update && apt-get install -y python3-venv python3-dev && rm -rf /var/lib/apt/lists/*
ENV PIP_BREAK_SYSTEM_PACKAGES=1

# Harness runtimes. Harbor installs each model's harness inside the container at
# trial start and first apt-installs what that harness needs. With those packages
# already in the image, that step is a cached no-op instead of a download inside
# Harbor's 360-second agent-setup window. Keep this line if you change the base
# image.
RUN apt-get update && apt-get install -y build-essential && rm -rf /var/lib/apt/lists/*


# The WORKDIR should always be /app
WORKDIR /app

# 2. Combined system dependencies, PHP 8.3, and core Laravel extensions (Internet Required)
# FIX: Added php-sqlite3 so SQLite works seamlessly without an external database server.
RUN apt-get update && apt-get install -y \ 
    gcc \
    php-cli \
    php-fpm \
    php-mysql \
    php-sqlite3 \
    php-mbstring \
    php-xml \
    php-bcmath \
    php-gd \
    php-curl \
    php-zip \
    php-intl \
    unzip \
    && rm -rf /var/lib/apt/lists/* 

RUN curl -fsSL https://deb.nodesource.com/setup_22.x | bash - \
&& apt-get install -y nodejs \
&& rm -rf /var/lib/apt/lists/*

# 3. Bring in the official Composer binary 
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer 

# 4. Copy lock files to utilize layer caching 
COPY codebase/Sports-Camp/composer.json codebase/Sports-Camp/composer.lock ./ 
COPY codebase/Sports-Camp/package.json codebase/Sports-Camp/package-lock.json ./

# 5. Download and cache PHP & Node dependencies (Internet Required)
RUN composer install --no-scripts --no-autoloader --prefer-dist 
RUN npm ci --no-audit --progress=false

RUN composer install --no-scripts --no-autoloader --prefer-dist 

# 6. Copy the rest of your application files 
COPY codebase/Sports-Camp/ ./ 

# 7. Finalize and bake Composer dependencies (Internet Required)
# FIX: This step completes the autoloader map AND triggers any package post-install scripts 
# while internet access is still available during the build phase.
RUN composer install --optimize-autoloader --prefer-dist

# 8. Force Composer into 100% offline mode for the runtime environment
# FIX: Sets environment variables so the agent cannot trigger network calls if it interacts with Composer.
ENV COMPOSER_ALLOW_SUPERUSER=1
ENV COMPOSER_DISABLE_NETWORK=1

#
# RUN git init && git remote add origin https://github.com/<org>/<repo>.git && git fetch --depth 1 origin <full-commit-sha> && git checkout --detach FETCH_HEAD && rm -rf .git


# Inject the build-artifact .gitignore so those files stay out of the captured
# patch.diff.
COPY gitignore /tmp/harbor.gitignore
RUN cat /tmp/harbor.gitignore >> .gitignore && rm /tmp/harbor.gitignore

# Checkpoint the starting state as tag v0.1.0-init (test.sh diffs against it).
# Steps are ';'-separated (the commit may no-op) so the tag lands whether or not
# git was already initialized and whether or not the tree has uncommitted changes.
RUN git config --global user.email "eval@bench"; \
    git config --global user.name "Eval Runner"; \
    git init; \
    git add -A; \
    git commit -m "initialize repo" || true; \
    git tag v0.1.0-init
CMD ["bash"]
