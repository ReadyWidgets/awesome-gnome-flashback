DESTDIR := /
PREFIX  := $(DESTDIR)usr
INSTALL := install

install:
	$(INSTALL) -m 0644 -D files/aweomse-gnome-flashback-session.desktop $(PREFIX)/share/xsessions/aweomse-gnome-flashback-session.desktop
	$(INSTALL) -m 0644 -D files/aweomse-gnome-flashback.desktop $(PREFIX)/share/applications/aweomse-gnome-flashback.desktop
	$(INSTALL) -m 0644 -D files/aweomse-gnome-flashback.session $(PREFIX)/share/gnome-session/sessions/aweomse-gnome-flashback.session
	$(INSTALL) -m 0755 -D files/aweomse-gnome-flashback-session $(PREFIX)/bin/aweomse-gnome-flashback-session
	$(INSTALL) -m 0755 -D files/aweomse-gnome-flashback $(PREFIX)/bin/aweomse-gnome-flashback
	$(INSTALL) -m 0644 -D files/aweomse-gnome-flashback.gschema.override $(PREFIX)/share/glib-2.0/schemas/01_aweomse-gnome-flashback.gschema.override
	glib-compile-schemas $(PREFIX)/share/glib-2.0/schemas/

uninstall:
	rm -f $(PREFIX)/bin/aweomse-gnome-flashback \
	      $(PREFIX)/bin/aweomse-gnome-flashback-session \
	      $(PREFIX)/share/gnome-session/sessions/aweomse-gnome-flashback.session \
	      $(PREFIX)/share/applications/aweomse-gnome-flashback.desktop \
	      $(PREFIX)/share/xsessions/aweomse-gnome-flashback-session.desktop \
	      $(PREFIX)/share/glib-2.0/schemas/01_aweomse-gnome-flashback.gschema.override
	glib-compile-schemas $(PREFIX)/share/glib-2.0/schemas/

.PHONY: install uninstall
