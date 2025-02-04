# Moonlight-osmc
## About
Provides a systemd service and laucnher script for running [moonlight-embedded](https://github.com/irtimmer/moonlight-embedded) on [OSMC](https://osmc.tv/). **This is very much alpha, and will probably break at times. Moonlight-embedded is not compiled against OSMC's libs yet, and problems are to be expected.**

## Installation
- Read the notes at the end of the page before installing.
- This package depends on `moonlight-embedded` ([from package (easy)](https://github.com/irtimmer/moonlight-embedded/wiki/Packages) or [from source](https://github.com/irtimmer/moonlight-embedded/wiki/Compilation))
- Install `moonlight-osmc` for your device from the provided .deb-package.
```
# dpkg -i <device>-moonlight-osmc_X.X.X.deb
```
- To configure moonlight-osmc you also need to install the [Kodi add-on](https://github.com/dodslaser/script.moonlight-osmc)

## Usage
- Configure moonlight-embedded using the add-on's settings
- Moonlight can be started directly by launching the add-on
- You can also launch a stream using systemctl
```
# systemctl start moonlight-osmc@<host_ip>
```

## Notes
- `moonlight-osmc` **WILL NOT WORK** on distributions other than OSMC!
- Version 0.3.0 is completely rewritten from scratch. The package should clean up the old files, but it might be a better idea to run `apt-get purge moonlight-osmc` before installing the new version.
- @swetoast is working on adding better support for gamepads to the project.
- Controllers **should** work as of 0.3.3, but might still break in some cases.
- Mapping gamepads still has to be done over ssh.

## Building the packages
Use the included Vagrantfile. If all goes well the packages will be placed in the source directory.
```
$ git clone https://github.com/dodslaser/moonlight-osmc.git
$ cd moonlight-osmc
$ vagrant up
```

## To-do
- Pairing should be done via the add-on
- Mapping gamepads should be done there too
