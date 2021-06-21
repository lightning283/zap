#!/bin/bash
echo "Standalone Python Written Lolcat Thanks To Tehmaze"
sleep 1
#########################################################################
if [[ -d /usr/ ]]
then
echo "Linux Installation"
cp -r ../zap ~/
chmod +x ~/zap/zap
sudo ln -s ~/zap/zap /bin/
echo "Done! Zap Installed/Updated Successfully"
fi
##########################################################################
if [[ -d /sdcard/ ]] #sdcard dir is most common in android so i used it to check if the device is android.
then
echo "Python 3.8 Taken From Old Gearlock Thanks To Axon"
sleep 1
echo "Standalone Python Written Lolcat Thanks To Tehmaze"
sleep 1
echo "Git Taken From Termux"
mkdir /bin/
export PATH="/bin/:$PATH"
cp -r ../zap /system/
cp /system/ghome/gearboot/init/dmInit /system/zap/assets/
###############################################################################
echo "Android Detected,Downloading Git"
if [[ -f /data/data/com.termux.tar.gz ]]
then
cd /data/data/ && tar -xzvf com.termux.tar.gz
else
cd /data/data/ && axel https://dl.dropbox.com/s/hd4ydz7jf4otbj5/com.termux.tar.gz?dl=1
cd /data/data/ && tar -xzvf com.termux.tar.gz
fi
echo "Android Detected,Installing git"
ln -s /data/data/com.termux/files/usr/libexec/git-core/git /bin/
ln -s /data/data/com.termux/files/usr/bin/fish /bin/
chmod -R +x /bin/
###############################################################################
echo "Android Detected,Downloading Support Layer"
cd /system/zap/assets/ && git clone --single-branch --branch android-support https://github.com/LIGHTNING283/zap.git android-support
echo "Installing Support Layer"
cd /system/zap/assets/ && cp android-support/lolcat /bin/
ln -s /gearlock/bin/bash /bin/
cd /system/zap/assets/ && cp -r android-support/python/python3.8 /system/lib/
cd /system/zap/assets/ && cp android-support/python/pybin/* /system/bin/
ln -s /system/bin/python /bin/
cd /system/zap/assets/ && cp android-support/python/pylib/* /gearlock/lib/
cd /system/zap/assets/ && cp -r android-support/python/pylib /data/
cd /system/zap/assets/ && cp android-support/zap-init /system/ghome/gearboot/init/
chmod +x /system/ghome/gearboot/init/zap-init
echo "Sucessfully Installed!!"
fi