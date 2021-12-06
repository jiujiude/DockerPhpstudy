### Docker
#### 通过Dockerfile构建phpstudy的镜像，并上传镜像
    - docker build -t 镜像名称 . #编译命令 
    - docker login #输入账号密码登录dockerHub
    - docker image push 镜像名称 #发布命令

#### Docker运行命令
    docker run -i -t -d --name phpstudy -p 22:22 -p 21:21 -p 80:80 -p 443:443 -p 30000:30000 -p 9080:9080 -p 30050:30050 --privileged=true -v C:\www:/www 镜像名称

#### Docker-Compose运行命令
    docker-composer up -d #后台模式运行