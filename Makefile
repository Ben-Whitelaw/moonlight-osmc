TMPDIR:=$(shell mktemp -d /tmp/moonlight-osmc_tmp.XXXXX)
DESTDIR=
INSTALL_LOCATION=$(DESTDIR)/
all:
	echo $(TMPDIR) > moonlight-osmc_tmp
	mkdir -p $(TMPDIR)/usr/bin
	mkdir -p $(TMPDIR)/etc/moonlight-osmc
	cp moonlight-osmc.sh $(TMPDIR)/usr/bin/moonlight-osmc
	chmod 755 $(TMPDIR)/usr/bin/moonlight-osmc
	cp watchdog.sh $(TMPDIR)/etc/moonlight-osmc/watchdog.sh
	chmod 755 $(TMPDIR)/etc/moonlight-osmc/watchdog.sh
	cp stream.sh $(TMPDIR)/etc/moonlight-osmc/stream.sh
	chmod 755 $(TMPDIR)/etc/moonlight-osmc/stream.sh
install:
	cp -R $(shell cat moonlight-osmc_tmp)/* $(INSTALL_LOCATION)
clean:
	rm -rf /tmp/moonlight-osmc_tmp.*
	rm -rf moonlight-osmc_tmp
