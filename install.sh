#!/bin/bash
sudo mkdir -p /home/
sudo cp -r ../zap /home/
sudo chmod +x /home/zap/zap
sudo ln -s /home/zap/zap /bin/
echo "Done! Zap Installed/Updated Successfully"
if [[ -d /sdcard/ ]]
then
    echo "Android Detected,Installing Support Layer"
    mkdir /bin
    ln -s /gearlock/bin/bash /bin/
    sleep 2
    echo "Python 3.8 Taken From Old Gearlock Thanks To Axon"
    sleep 1
    echo "Standalone Python Written Lolcat Thanks To Tehmaze"
    sleep 1
    echo "Git Taken From Termux"
    sleep 1
    cp android-support/lolcat /system/bin/
    cp -r android-support/python/python3.8 /system/lib/
    cp android-support/python/pybin/* /system/bin/
    ln -s /system/bin/python /bin/
    cp android-support/python/pylib/* /gearlock/lib/
    cp -r android-support/python/pylib /data/
    cp /system/ghome/gearboot/init/dmInit /system/ghome/gearboot/init/dmInit.bak
    echo "cp /data/pylib/* /gearlock/lib/" >> /system/ghome/gearboot/init/dmInit


fi