### Steam in fedora toolbox

Upstream https://github.com/containers/toolbox

Add Steam and Intel libva drivers for hardware stream decoding to base toolbox image.

Start toolbox using image
```
toolbox create -c steam -i docker.io/randomcoww/fedora-toolbox-steam:latest
```

Run steam
```
toolbox enter steam
steam
```

Controller support needs udev rules on host:
```
wget -O /etc/udev/rules.d/60-steam-input.rules \
  https://raw.githubusercontent.com/ValveSoftware/steam-devices/master/60-steam-input.rules 

wget -O /etc/udev/rules.d/60-steam-vr.rules \
  https://raw.githubusercontent.com/ValveSoftware/steam-devices/master/60-steam-vr.rules
```