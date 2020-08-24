CC = cc
LD = ${CC}

PREFIX = /usr/local
MANPREFIX = ${PREFIX}/share/man

install:
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	mkdir -p $(DESTDIR)$(MANPREFIX)/man1
	cp mkws $(DESTDIR)$(PREFIX)/bin/mkws
	cp mkws.1 $(DESTDIR)$(MANPREFIX)/man1/
	chmod 755 $(DESTDIR)$(PREFIX)/bin/mkws

uninstall:
	rm $(DESTDIR)$(PREFIX)/bin/mkws
	rm $(DESTDIR)$(MANPREFIX)/man1/mkws.1
