#!/bin/bash
if [[ -d /sdcard/ ]]
then
    cp /system/ghome/gearboot/init/dmInit /home/zap/assets/
    echo "cp /data/pylib/* /gearlock/lib/" >> /system/ghome/gearboot/init/dmInit
    
    echo "Android Detected,Installing git"
    cp -r /home/zap/assets/com.termux /data/data/
    export PATH="/data/data/com.termux/files/usr/bin/:$PATH" 
    echo "Android Detected,Downloading Support Layer"
    cd /home/zap/assets/ && sudo git clone --single-branch --branch android-support https://github.com/LIGHTNING283/zap.git android-support
    echo "Installing Support Layer"
    mkdir /bin
    export PATH="/bin/:$PATH"
    ln -s /gearlock/bin/bash /bin/
    sleep 2
    echo "Python 3.8 Taken From Old Gearlock Thanks To Axon"
    sleep 1
    echo "Standalone Python Written Lolcat Thanks To Tehmaze"
    sleep 1
    echo "Git Taken From Termux"
    sleep 1
    cp android-support/lolcat /bin/
    cp -r android-support/python/python3.8 /system/lib/
    cp android-support/python/pybin/* /system/bin/
    ln -s /system/bin/python /bin/
    cp android-support/python/pylib/* /gearlock/lib/
    cp -r android-support/python/pylib /data/
fi

sudo mkdir -p /home/
sudo cp -r ../zap /home/
sudo chmod +x /home/zap/zap
sudo ln -s /home/zap/zap /bin/
echo "Done! Zap Installed/Updated Successfully"