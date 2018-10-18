Firelayer dockerized
====================

install from site [fairlayer.com](https://fairlayer.com/#install)

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

```bash
# download image from https://hub.docker.com/r/sv99/firelayer_fair/
docker-compose up

# build image local from Dockerfil, need Fair-1701.tar.gz
docker-compose -f docker-compose_gen.yml up
```

