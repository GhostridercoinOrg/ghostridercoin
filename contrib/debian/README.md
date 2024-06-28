# Debian

This directory contains files used to package grcoind/grcoin-qt
for Debian-based Linux systems. If you compile grcoind/grcoin-qt yourself, there are some useful files here.

## grcoin: URI support

grcoin-qt.desktop (Gnome / Open Desktop)
To install:

    sudo desktop-file-install grcoin-qt.desktop
    sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your grcoin-qt binary to `/usr/bin`
and the `../../share/pixmaps/grcoin128.png` to `/usr/share/pixmaps`

grcoin-qt.protocol (KDE)

