#!/usr/bin/env bash
# apt-get update
# apt-get install -y build-essential devscripts debhelper dh-systemd
SOURCE=moonlight-osmc_$(head -c21 /vagrant/debian/changelog | tail -c5)
rm -rf /home/vagrant/build/
mkdir -p /home/vagrant/build/$SOURCE/
cp -r /vagrant/* /home/vagrant/build/$SOURCE/
find /home/vagrant/build/$SOURCE/ -type d -exec chmod 755 {} +
find /home/vagrant/build/$SOURCE/ -type f -exec chmod 644 {} +
chmod 755 /home/vagrant/build/$SOURCE/debian/rules
cd /home/vagrant/build/
tar -cjf $SOURCE.orig.tar.bz2 $SOURCE/*
cd $SOURCE
debuild -us -uc
mv /home/vagrant/build/*.deb /vagrant/
