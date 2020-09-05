# i3-gnome-flashback [![LICENSE](http://img.shields.io/badge/license-MIT-blue.svg?style=flat)](http://choosealicense.com/licenses/mit/)

Allows you to use i3 in a GNOME-Flashback session. Large parts of this are based on the existing [`i3-gnome`](https://github.com/lvillani/i3-gnome) project.

This has been tested working on GNOME version **3.36**.

# Installation

For Arch users see the [AUR package](https://aur.archlinux.org/packages/i3-gnome-flashback/) for a more easy intallation.

For Ubuntu (19.10), ensure prerequisites are installed:

```
sudo apt install i3 gnome-flashback build-essential
```

Then install i3-gnome-flashback:

```
sudo make install
```

For other distributions, clone this repository and run `make install` with root privileges.

# Notes

To understand how the files in this repo work to initialize an i3 and GNOME session, refer to this [GNOME wiki](https://wiki.gnome.org/Projects/SessionManagement/RequiredComponents) on session management.
