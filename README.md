### Install
```shell
❯ make install
```

### Usage
- Anything that returns html | json will be filtered as of now.
```shell
❯ curl -X POST http://data.io -d '{some:"data"}' | tr1p-filter
```

