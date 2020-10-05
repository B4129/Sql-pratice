# README

## 概要

演習用リポジトリ

### Dockerコンテナ群の起動
```
docker-compose up -d
```

### Dockerコンテナ群のシャットダウン
```
docker-compose down
```

### コンテナの中に入る
```
docker-compose exec db bash
```


### Postgres にログイン

```
psql -U admin
```

### DB接続（外部DBクライアントを使用する場合）

```
Host: localhost
Port: 5433
Database: practice
User: admin
Password: admin
```