Firelayer dockerized
====================

Install from site [fairlayer.com](https://fairlayer.com/#install)

p.s. not worked on my MAC - get segmentation fault

```bash
id=fair
f=Fair-2201.tar.gz
mkdir $id && cd $id && curl https://fairlayer.com/$f -o $f
if [[ -x /usr/bin/sha256sum ]] && sha256sum $f || shasum -a 256 $f | grep \
  b5b1a96b9315c5f4f255c4a4362db3869655b8886d6e1ae3dd8e05820db9b825; then
  tar -xzf $f && rm $f && ./install
  node fair
fi
```

Dockerized install
```bash
# 1.
# download image from https://hub.docker.com/r/sv99/firelayer_fair/
docker-compose up

# 2.
# build image local from Dockerfile, need Fair-1701.tar.gz
docker-compose -f docker-compose_gen.yml up
```

