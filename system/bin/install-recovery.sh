#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:25261390:768f5c7f5072576e4458ccb72cd58d8c90d1adfa; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:23405898:30d96a62f6a3f10b5e2374a4ef857af07f70a572 EMMC:/dev/block/bootdevice/by-name/recovery 768f5c7f5072576e4458ccb72cd58d8c90d1adfa 25261390 30d96a62f6a3f10b5e2374a4ef857af07f70a572:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
