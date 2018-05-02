all:
	@echo "Nothing to be done"

install: rosmasterd.sh rosmasterd.service
	cp rosmasterd.sh /usr/local/bin/
	cp rosmasterd.service /etc/systemd/system/

uninstall: /usr/local/bin/rosmasterd.sh /etc/systemd/system/rosmasterd.service
	rm /usr/local/bin/rosmasterd.sh
	rm /etc/systemd/system/rosmasterd.service

.PHONY: all install uninstall
