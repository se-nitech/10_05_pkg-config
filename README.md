# makeのサンプル

起動

```bash
docker-compose build
docker-compose up -d
```

pkg-configのパッケージ一覧表示

```bash
docker-compose exec myopencv pkg-config --list-all
```

make実行

```bash
docker-compose exec myopencv make
```

停止

```bash
docker-compose down
```

または

```bash
docker-compose down --rmi all --volumes --remove-orphans
```
