if [[ -d "/usr/" ]]
then
echo "Removing File In /bin/"
sudo rm -rf /bin/zap
sleep 1
echo "Removing Zap Home"
rm -rf ~/zap
sleep 1
echo "Removed Succesfully"
fi
################################################################
if [[ -d "/sdcard/" ]]
then
echo "Removing Home"
rm -rf /system/zap
sleep 1
echo "Removing Bin"
rm -rf /bin
rm -rf /system/bin/zap
sleep 1
echo "Removing Python"
rm -rf /system/lib/python3.8
rm -rf /data/pylib
rm -rf /system/bin/python
rm -rf /system/bin/python3.8
sleep 2
echo "Removing Git"
rm -rf /data/data/com.termux
sleep 1
echo "Removing Init"
rm -rf /system/ghome/gearboot/init/zap-init
sleep 1
echo "Uninstall Successfull.."
fi