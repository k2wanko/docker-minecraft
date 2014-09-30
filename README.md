
# Docker Minecraft onbuild

## QuickStart

```
$ echo "FROM k2wanko/minecraft:1.8" > Dockerfile && docker build -t k2wanko/minecraft .
$ docker run --name some-minecraft -i -p 25565:25565 -e "EULA=true" k2wanko/minecraft
```

## LICENSE

[MIT License](http://opensource.org/licenses/mit-license.php)

Copyright (c) kazu@k2lab.net
