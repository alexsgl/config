#!/bin/bash
# Firefox Nightly install script

test -d "$HOME/Applications" || mkdir "$HOME/Applications"
test -e /Applications || sudo ln -s "$HOME/Applications" /Applications

mkdir "$HOME/Applications/FirefoxNightly.app"

test -e "$HOME/Downloads/firefox*a*.tar.bz2" || echo "Firefox archive not found."

tar -fvx "$HOME/Downloads/firefox*a*.tar.bz2" \
	-C "$HOME/Applications/FirefoxNightly.app --strip-components=1"

cp -fv "$HOME/.420config/launchers/.local/share/applications/firefox-nightly.desktop" \
	"$HOME/.local/share/applications/firefox-nightly.desktop"

echo "Done."
