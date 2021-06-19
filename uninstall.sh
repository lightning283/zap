sudo rm -rf /bin/zap
sudo rm -rf /home/zap
if [[ -d /sdcard/ ]]
then
echo "Removing Bin"
rm -rf /bin
echo "Removing Python"
rm -rf /system/lib/python3.8
echo "Restoring Dminit"
rm -rf /system/ghome/gearboot/init/dmInit
cp /system/ghome/gearboot/init/dmInit.bak /system/ghome/gearboot/init/dmInit
fi