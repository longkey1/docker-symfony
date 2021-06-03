FROM longkey1/php:latest

# Install dependency packages
RUN apt-get -y update && apt-get -y install wget

# Install symfony-cli
RUN wget https://get.symfony.com/cli/installer -O - | bash
RUN mv ${HOME}/.symfony/bin/symfony /usr/local/bin/symfony

# Confirm symfonyversion
RUN symfony version
