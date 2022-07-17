#!/bin/bash

mkdir KeePass.iconset
sips -Z 16 KeePass.png --out KeePass.iconset/icon_16x16.png
sips -Z 32 KeePass.png --out KeePass.iconset/icon_16x16@2x.png
sips -Z 32 KeePass.png --out KeePass.iconset/icon_32x32.png
sips -Z 64 KeePass.png --out KeePass.iconset/icon_32x32@2x.png
sips -Z 64 KeePass.png --out KeePass.iconset/icon_64x64.png
sips -Z 128 KeePass.png --out KeePass.iconset/icon_64x64@2x.png
sips -Z 128 KeePass.png --out KeePass.iconset/icon_128x128.png
sips -Z 256 KeePass.png --out KeePass.iconset/icon_128x128@2x.png
sips -Z 256 KeePass.png --out KeePass.iconset/icon_256x256.png
sips -Z 512 KeePass.png --out KeePass.iconset/icon_256x256@2x.png
sips -Z 512 KeePass.png --out KeePass.iconset/icon_512x512.png
sips -Z 1024 KeePass.png --out KeePass.iconset/icon_512x512@2x.png
iconutil --convert icns KeePass.iconset

unzip KeePass-2.4.1.zip
mv KeePass-2.4.1 KeePass
rm -rf KeePass.app && macpack -n KeePass -o . -m winforms -i KeePass.icns -r KeePass/KeePass.XmlSerializers.dll,KeePass/KeePassLibC32.dll,KeePass/KeePass.chm,KeePass/KeePass.exe.config,KeePass/KeePassLibC64.dll,KeePass/Languages,KeePass/XSL,KeePass/Plugins,KeePass/ShInstUtil.ex,KeePass/License.txt -a KeePass/KeePass.exe
