# Quadlet Container Files

Quadlet files to spin up various containers in home lab type environments. Tested on [Fedora 41](https://getfedora.org) and [Podman 5.4.0](https://podman.io).

All quadlet .container and .pod files have the PublishPort values set to 8880. Please change to an appropriate port for your set up.

| Container File | Homepage | Container Repository | rootful/rootless |
|---|---|---|---|
| [wifi-card.container](https://github.com/str8edgedave/config_files/blob/main/containers/wifi-card.container) | https://wificard.io/ | https://hub.docker.com/r/bndw/wifi-card | rootless |
| [homer.container](https://github.com/str8edgedave/config_files/blob/main/containers/homer.container) | https://github.com/bastienwirtz/homer | https://hub.docker.com/r/b4bz/homer | rootless |
