#dgruen/phpcs
PHP Code Sniffer container
##Usage

```shell
docker run -i --rm \
    -v "$(pwd)":/sniff \
    --name phpcs_"$(date +%s%N)" \
    dgruen/phpcs:testing "$@"
```

I use the ```"$(date +%s%N)"``` to prevent naming
conflicts when running multiple containers simultaneously
