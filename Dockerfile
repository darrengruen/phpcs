# PHPCS Docker container
FROM ubuntu:16.04
RUN apt-get update \
    && apt-get install -y php \
    php-cli \
    php-pear \
    curl
RUN pear install PHP_CodeSniffer
WORKDIR /sniff
ENTRYPOINT [ "phpcs" ]
