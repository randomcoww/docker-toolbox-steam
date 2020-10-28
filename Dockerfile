ARG FEDORA_RELEASE=33
FROM registry.fedoraproject.org/f$FEDORA_RELEASE/fedora-toolbox:$FEDORA_RELEASE

RUN set -x \
  \
  && dnf -y install \
    https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm \
    https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm \
  && dnf -y install \
    steam \
    libva.i686 \
    libva-intel-hybrid-driver.i686 \
    libva-intel-driver.i686 \
  && dnf clean all