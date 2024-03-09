FROM ghcr.io/longkey1/php:8.1

# Install dependency packages
RUN apt update && apt -y install wget

# Install symfony-cli
# ref https://symfony.com/download#step-1-install-symfony-cli
RUN curl -1sLf 'https://dl.cloudsmith.io/public/symfony/stable/setup.deb.sh' | bash
RUN apt -y install symfony-cli

# Confirm symfony version
RUN symfony version
