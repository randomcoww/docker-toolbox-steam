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
toolbox enter f33-steam
```

Run steam
```
steam
```

Controller support needs udev rules on host:
```
wget -O /etc/udev/rules.d/60-steam-input.rules \
  https://raw.githubusercontent.com/ValveSoftware/steam-devices/master/60-steam-input.rules 

wget -O /etc/udev/rules.d/60-steam-vr.rules \
  https://raw.githubusercontent.com/ValveSoftware/steam-devices/master/60-steam-vr.rules
```
