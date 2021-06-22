if [[ -d "/usr/" ]]
then
sudo rm -rf /bin/zap
rm -rf ~/zap
echo "Removed Succesfully"
fi
################################################################
if [[ -d "/sdcard/" ]]
then
echo "Removing Home"
rm -rf /system/zap
echo "Removing Bin"
rm -rf /bin
rm -rf /system/bin/zap
echo "Removing Python"
rm -rf /system/lib/python3.8
rm -rf /data/pylib
rm -rf /system/bin/python
rm -rf /system/bin/python3.8
echo "Removing Git"
rm -rf /data/data/com.termux
echo "Removing Init"
rm -rf /system/ghome/gearboot/init/zap-init
echo "Uninstall Successfull.."
fi