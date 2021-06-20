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
cp /home/zap/assets/dmInit /system/ghome/gearboot/init/
fi