#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery:15417344:b08d10c8e057989e88c1ea8d5e3af3dece3bb93b; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/msm_sdcc.1/by-name/boot:14721024:469529f38745a1e28de8bcf33e81f6352df732e1 EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery b08d10c8e057989e88c1ea8d5e3af3dece3bb93b 15417344 469529f38745a1e28de8bcf33e81f6352df732e1:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
