# Docker 化 Postgresql + multicorn + pg-es-fdw

### 起源
通过 Postgresql 的 FDW 实现数据自动同步到 ElasticSearch，通过查询资料找到了上述方案，
于是把他们 Docker 化。

### 依赖
1. Docker 镜像 [Postgresql 9.5.5](https://hub.docker.com/_/postgres/)
3. [multicorn](http://multicorn.org) 通过 Python 来写 postgresql 的FDW
4. [pg-es-fdw](https://github.com/Mikulas/pg-es-fdw) 是 multicorn 的第三方实现

### 使用
```
git clone https://github.com/runforever/docker-psql-es.git
docker-compose up
```
