# buildsniproxy
build sniproxy deb package


# Get the deb package.
```sh
docker run --rm -it  -v $(pwd)/out:/out  neilpang/buildsniproxy
```

The deb package will be in the `pwd/out` folder.

# Install deps:

```sh
apt-get update && apt-get install -qqy libev4  libudns0 

```

# Install sniproxy

```sh
dpkg -i ../sniproxy_<version>_<arch>.deb

```


