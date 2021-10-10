# api

## api mock
```shell
docker run --rm -it -v ${PWD}:/ws -p 4010:4010 stoplight/prism mock -h 0.0.0.0 -d /ws/swagger.yaml
```
