if [[ -d "/usr/" ]]
then
sudo rm -rf /bin/zap
rm -rf ~/zap
echo "Removed Succesfully"
fi
################################################################
if [[ -d "/sdcard/" ]]
then
echo "Removing Bin"
rm -rf /bin
echo "Removing Python"
rm -rf /system/lib/python3.8
rm -rf /data/pylib
rm -rf /system/bin/python
rm -rf /system/bin/python3.8
echo "Restoring Dminit"
nout rm -rf /system/ghome/gearboot/init/dmInit
nout cp /home/zap/assets/dmInit /system/ghome/gearboot/init/
echo "Removing Git"
rm -rf /data/data/com.termux
echo "Uninstall Successfull.."
fi