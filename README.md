# 攀岩计分引擎

Go 事件处理服务的起始工程，约定从环境变量读取 Redis、PostgreSQL 和监听地址。`docker-compose.yml` 提供本地依赖容器，业务事件与排名查询均通过后端接口完成。

## 运行

```bash
docker compose up --build
go test ./...
```
