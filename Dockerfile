# PHPCS Docker container
FROM ubuntu:16.04
RUN apt-get update
RUN apt-get install -y php
RUN apt-get install -y php-cli
RUN apt-get install -y php-pear
RUN apt-get install -y curl
RUN pear install PHP_CodeSniffer
# WORKDIR /tmp
# RUN echo $PATH && sleep 15
# COPY ./phpcs.phar /usr/local/bin/phpcs
# COPY ./phpcbf.phar /usr/local/bin/phpcbf
WORKDIR /sniff
ENTRYPOINT [ "phpcs" ]
