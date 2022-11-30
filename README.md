由于工作原因，笔记本内网无法按照一些软件

有时候本地环境安装负责，需要一个干净的Linux环境来测试


下载image 

```
docker pull ghcr.io/15b883/linux-workspace:064bba3
```

运行

```
docker run -itd --name linux -p 22:22 ghcr.io/15b883/linux-workspace
```

连接到Linux环境（容器）

```
ssh root@localhost -p 22   # 密码123456
```
