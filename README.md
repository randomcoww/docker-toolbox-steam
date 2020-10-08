### Steam in fedora toolbox

Upstream https://github.com/containers/toolbox

Add Steam and Intel libva drivers for hardware stream decoding to base toolbox image.


Build image
```
buildah bud -t toolbox-steam:f33
```

Start toolbox using image
```
toolbox create -c f33-steam -i toolbox-steam:f33
```

Run steam
```
steam
```