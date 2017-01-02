# Docker 化 Postgresql + multicorn + pg-es-fdw

### 起源
通过 Postgresql 的 FDW 实现数据自动同步到 ElasticSearch，通过查询资料找到了上述方案，
于是把他们 Docker 化。

### 依赖
1. Docker 镜像 [Python 2.7.13](https://hub.docker.com/_/python/)
2. Docker 镜像 [Postgresql 9.5](https://hub.docker.com/_/postgres/)
3. [multicorn](http://multicorn.org) 通过 Python 来写 postgresql 的FDW
4. [pg-es-fdw](https://github.com/Mikulas/pg-es-fdw) 是 multicorn 的第三方实现

### 目前所处状态
项目还不稳地，pg-es-fdw 需要进一步定制，经过我的测试，目前不支持 datetime 类型。

### 使用
```
git clone https://github.com/runforever/docker-psql-es.git
cd docker-psql-es
docker build -t postgres_es:latest .
```
