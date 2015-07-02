docker-vim
==========

Build
```
docker build --rm -t kf/vim github.com/7kfpun/docker-vim
```

Run Example
```
$ alias dvim='docker run --rm -it -v $PWD:/root/pwd kf/vim'
$ dvim foobar.sh
```
