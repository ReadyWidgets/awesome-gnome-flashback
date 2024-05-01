DESTDIR := /
PREFIX  := $(DESTDIR)usr
INSTALL := install

install:
	$(INSTALL) -m 0644 -D files/awesome-gnome-flashback-session.desktop $(PREFIX)/share/xsessions/awesome-gnome-flashback-session.desktop
	$(INSTALL) -m 0644 -D files/awesome-gnome-flashback.desktop $(PREFIX)/share/applications/awesome-gnome-flashback.desktop
	$(INSTALL) -m 0644 -D files/awesome-gnome-flashback.session $(PREFIX)/share/gnome-session/sessions/awesome-gnome-flashback.session
	$(INSTALL) -m 0755 -D files/awesome-gnome-flashback-session $(PREFIX)/bin/awesome-gnome-flashback-session
	$(INSTALL) -m 0755 -D files/awesome-gnome-flashback $(PREFIX)/bin/awesome-gnome-flashback
	$(INSTALL) -m 0644 -D files/awesome-gnome-flashback.gschema.override $(PREFIX)/share/glib-2.0/schemas/01_awesome-gnome-flashback.gschema.override
	glib-compile-schemas $(PREFIX)/share/glib-2.0/schemas/

uninstall:
	rm -f $(PREFIX)/bin/awesome-gnome-flashback \
	      $(PREFIX)/bin/awesome-gnome-flashback-session \
	      $(PREFIX)/share/gnome-session/sessions/awesome-gnome-flashback.session \
	      $(PREFIX)/share/applications/awesome-gnome-flashback.desktop \
	      $(PREFIX)/share/xsessions/awesome-gnome-flashback-session.desktop \
	      $(PREFIX)/share/glib-2.0/schemas/01_awesome-gnome-flashback.gschema.override
	glib-compile-schemas $(PREFIX)/share/glib-2.0/schemas/

.PHONY: install uninstall
