![Screencast](https://2.bp.blogspot.com/-a1ldr3X2U1s/WZAIrNamPxI/AAAAAAAAAjw/CGVeNEUzjWk2pK71C4PwuMIzRFwc9ROawCLcBGAs/s1600/youdao.png)
### 有道词典 v1.1.1 ( 支持 PyQt 5.5 或以上 )
这个有道词典最新源码是从 Deepin 15.4.1 (youdao-dict_1.0.8-1_amd64.deb) 取出, 然后重新打包成 Ubuntu 能用的 deb 包<br>
它支持 PyQt 5.6 和 SIP 4.18.1 版本 (Ubuntu 16.10 / Fedora 24 / OpenSUSE 42.2 等开始的发行版)<br>
http://packages.deepin.com/deepin/pool/main/y/youdao-dict/<br>
<br>
1) 先取得有道词典安装包 (需要3D加速, 所以假设显卡驱动已安装了)<br>
```
$ wget https://github.com/yomun/youdaodict_5.5/raw/master/youdao-dict_1.1.1-0~ubuntu_amd64.deb
```
2) 开始安装需要的依赖软件包, 然后才安装以上有道词典<br>

- Ubuntu 16.04 - 17.10 / Debian 9.1 / Linux Mint 18.2 / Zorin OS 12.1
```
$ su root
$ apt install python3 python3-dbus python3-requests python3-lxml python3-pil python3-xdg python3-xlib
$ apt install python3-pyqt5 python3-pyqt5.qtmultimedia python3-pyqt5.qtquick python3-pyqt5.qtwebkit

$ apt install gir1.2-appindicator3-0.1 qml-module-qtgraphicaleffects qml-module-qtquick-controls
$ apt install libqt5multimedia5-plugins ttf-wqy-microhei
$ apt install tesseract-ocr tesseract-ocr-eng tesseract-ocr-chi-sim tesseract-ocr-chi-tra
$ dpkg -i youdao-dict_1.1.1-0?ubuntu_amd64.deb

$ apt install ubuntu-restricted-extras

$ su username
$ xhost + && youdao-dict

遇到 Xlib.error.DisplayConnectionError: Can't connect to display “:0”: b'No protocol specified\n' 问题
则需要 xhost + 指令, 这是 python-xlib 引起的 bugs
```
- Fedora 26 - 27
```
$ touch ~/.Xauthority
$ su
$ dnf install python python3 python-xlib python3-pip -y
$ pip3 install --upgrade pip
$ pip3 install python3-xlib

$ dnf install python3-requests python3-lxml python3-pillow python3-qt5 python3-qt5-devel python3-qt5-webkit
$ dnf install libappindicator-gtk3 qt5-qtgraphicaleffects qt5-qtquickcontrols qt5-qtbase-devel
$ dnf install tesseract-langpack-chi_sim tesseract-langpack-chi_tra tesseract-langpack-enm tesseract-devel

$ ar vx youdao-dict_1.1.1-0?ubuntu_amd64.deb
$ tar -Jxvf data.tar.xz  -C /
$ rm -rf control.tar.gz && rm -rf data.tar.xz && rm -rf debian-binary
```
- OpenSUSE Tumbleweed
```
$ su root
$ zypper install python python3 python-xlib python3-pip
$ pip install pyxdg
$ pip3 install --upgrade pip
$ pip3 install python3-xlib

$ zypper install python3-requests python3-lxml python3-Pillow python3-qt5 python3-qt5-devel
$ zypper install typelib-1_0-AppIndicator3-0_1 libqt5-qtgraphicaleffects libqt5-qtquickcontrols
$ zypper install tesseract-ocr-traineddata-chinese_simplified tesseract-ocr-traineddata-chinese_traditional
$ zypper install tesseract-ocr-traineddata-english tesseract-ocr-devel

$ ar vx youdao-dict_1.1.1-0?ubuntu_amd64.deb
$ tar -Jxvf data.tar.xz  -C /
$ rm -rf control.tar.gz && rm -rf data.tar.xz && rm -rf debian-binary

$ su username
$ xhost + && youdao-dict

遇到 Xlib.error.DisplayConnectionError: Can't connect to display “:0”: b'No protocol specified\n' 问题
所以需要 xhost + 指令, 这是 python-xlib 引起的 bugs
```
- Antergos 17.8 / Manjaro 17.0.4
```
$ su

$ pacman -S python python-xlib python-xdg python-dbus
$ pacman -S python-requests python-lxml python-pillow python-pyqt5 pyqt5-common
$ pacman -S libappindicator-gtk3 qt5-graphicaleffects qt5-quickcontrols qt5-webkit qt5-base
$ pacman -S wqy-microhei binutils
$ pacman -S tesseract tesseract-data-eng tesseract-data-chi_sim tesseract-data-chi_tra

$ ar vx youdao-dict_1.1.1-0?ubuntu_amd64.deb
$ tar -Jxvf data.tar.xz -C /
$ rm -rf control.tar.gz && rm -rf data.tar.xz && rm -rf debian-binary
```
- Manjaro 17.0.2
```
安装方法跟以上 Antergos 一样, 但运行 youdao-dict 可能会出现 Cannot mix incompatible Qt library (version 0x50701..
这样的错误, 解决方法是重安装 qt5-styleplugins (安装 aurget 以重安装)

$ pacman -Rsn qt5-styleplugins
$ pacman -Syyu

$ pacman -S wget base-devel

$ su username

$ wget https://github.com/pbrisbin/aurget/archive/v4.7.2.tar.gz
$ tar -xvf v4.7.2.tar.gz && cd aurget-4.7.2 && sudo make install

$ aurget -S qt5-styleplugins
```
- Solus OS 3
```
$ su

$ pip3 install --upgrade pip
$ pip3 install pyxdg

$ eopkg install python3 python3-dbus python-requests python-lxml python-pillow python3-xlib
$ eopkg install python3-qt5 qt5-multimedia qt5-webkit
$ eopkg install libappindicator qt5-graphicaleffects qt5-quickcontrols
$ eopkg install tesseract tessdata

$ eopkg install binutils
$ ar vx youdao-dict_1.1.1-0?ubuntu_amd64.deb
$ tar -Jxvf data.tar.xz -C /
$ rm -rf control.tar.gz && rm -rf data.tar.xz && rm -rf debian-binary
```
- 卸载
```
$ rm -rf ~/.config/youdao-dict
$ rm -rf ~/.cache/youdao-dict

$ su

如果是 dpkg 安装的话
$ dpkg -r youdao-dict

如果是 tar 安装的话
$ wget https://raw.githubusercontent.com/yomun/youdaodict_5.5/master/youdaodict-uninstall.sh
$ bash youdaodict-uninstall.sh
```
- 图标不能显示问题
```
$ su
$ rm -rf /usr/share/icons/hicolor/icon-theme.cache
```
