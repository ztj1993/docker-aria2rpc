# docker-ztj1993-aria2rpc

alpine aria2rpc 镜像；
支持环境变量配置。

## 相关链接
- [GitHub](https://github.com/ztj1993/docker-aria2rpc)
- [DockerHub](https://hub.docker.com/r/ztj1993/aria2rpc)

## 使用教程
```
docker run -ti --rm ztj1993/aria2rpc:latest
```

## 环境变量
默认的环境变量
```
export ARIA2C_ENABLE_RPC=true
export ARIA2C_RPC_LISTEN_ALL=true
export ARIA2C_RPC_LISTEN_PORT=6800
export ARIA2C_RPC_ALLOW_ORIGIN_ALL=true
export ARIA2C_LOG=-
export ARIA2C_CONSOLE_LOG_LEVEL=info
export ARIA2C_DISABLE_IPV6=true
```
启动脚本会将所有 `ARIA2C_*` 的环境变量，生成配置文件，位于 `/etc/aria2c/env.conf`。

## TODO
- 默认环境变量可覆盖

## 更新日志

> 2020-09-16

- 初始构建
