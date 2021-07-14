if [[ -d "/usr/" ]]
then
echo "Removing File In /bin/"
sudo rm -rf /bin/zap
sudo rm -rf /bin/zzap
echo "Removing Zap Home"
rm -rf ~/zap
echo "Removed Succesfully"
fi
################################################################
if [[ -d "/system/build.prop" ]]
then
clear
echo "Removing Home" | pv -qL 5
rm -rf /system/zap
sleep 1
echo "Removing Bin" | pv -qL 5
rm -rf /bin
rm -rf /system/bin/zap
sleep 1
echo "Removing Python" | pv -qL 5
rm -rf /system/lib/python3.8
rm -rf /data/pylib
rm -rf /system/bin/python
rm -rf /system/bin/python3.8
sleep 2
echo "Removing Git" | pv -qL 5
rm -rf /data/data/com.termux
sleep 1
echo "Removing Init" | pv -qL 5
rm -rf /system/ghome/gearboot/init/zap-init
sleep 1
echo "Uninstall Successfull.." | pv -qL 5
rm -rf /system/bin/pv
fi