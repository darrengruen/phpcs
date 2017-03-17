# gruen/phpcs
PHP Code Sniffer container

Take a look at the [phpcs homepage](https://github.com/squizlabs/PHP_CodeSniffer)

## Usage

The default `ENTRYPOINT` is `phpcs`

The default `CMD` parameters are `--standard=PSR2` and `/app`

without adding anything it will run against the current directory (recursively) against the PSR2 standard

```shell
docker run -i \
    --rm \
    -v "$(pwd)":/app \
    --name phpcs_"$(date +%s)" \
    gruen/phpcs
```

you can override the defaults by passing any of the phpcs options

```shell
docker run -i \
    --rm \
    -v "$(pwd)":/app \
    --name phpcs_"$(date +%s)" \
    gruen/phpcs --standard=pear /app/src
```

You can create an alias with the following

```shell
docker run -i --rm \
    -v "$(pwd)":/app \
    --name phpcs_"$(date +%s%N)" \
    gruen/phpcs "$@"
```

I use the ```"$(date +%s%N)"``` to prevent naming
conflicts when running multiple containers simultaneously
