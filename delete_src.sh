#!/bin/sh

PREFIX=/usr

rm -rf $PREFIX/share/icons/hicolor/16x16/apps/youdao-dict.png
rm -rf $PREFIX/share/icons/hicolor/24x24/apps/youdao-dict.png
rm -rf $PREFIX/share/icons/hicolor/48x48/apps/youdao-dict.png
rm -rf $PREFIX/share/icons/hicolor/64x64/apps/youdao-dict.png
rm -rf $PREFIX/share/icons/hicolor/96x96/apps/youdao-dict.png
rm -rf $PREFIX/share/icons/hicolor/scalable/apps/youdao-dict.svg

rm -rf $PREFIX/share/applications/youdao-dict.desktop
rm -rf $PREFIX/share/dbus-1/services/com.youdao.backend.service
rm -rf $PREFIX/share/dbus-1/services/com.youdao.indicator.service

rm -rf $PREFIX/share/doc/youdao-dict/changelog.Debian
rm -rf $PREFIX/share/doc/youdao-dict/copyright
rm -rf $PREFIX/share/doc/youdao-dict/license_ch.docx
rm -rf $PREFIX/share/doc/youdao-dict/license_ch.txt
rm -rf $PREFIX/share/doc/youdao-dict

rm -rf $PREFIX/share/youdao-dict

rm -rf $PREFIX/bin/youdao-dict

rm -rf /etc/xdg/autostart/youdao-dict-autostart.desktop
