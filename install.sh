if [[ -d /usr/ ]]
then
clear
echo "Linux Detected,Continuing Linux Installation"
clear
echo "Copying Files."
cp -r ../zap ~/
chmod +x ~/zap/zap
clear
echo "Linking File To bin,This May Need Root."
sudo ln -s ~/zap/zzap /bin/
clear
echo "Done,Install Finished.."
clear
echo "Here Is The Home Dir"
ls
fi

if [[ -f /system/build.prop ]]
then
cp assets/pv /system/bin/
clear
figlet -c Zap | pv -qL 50
echo "Android Detected , Continuing Android Installation."
clear
echo "Making Directory For Dep Files" | pv -qL 10
mkdir /bin/
echo "Done!"
echo "Adding /bin/ To Path" | pv -qL 8
export PATH="/bin/:$PATH"
echo "Done!!"
echo "Copying Main Files." | pv -qL 10
sleep 1
cp -r ../zap /system/
cp ../zap/zap /system/bin/
echo "Done!!"
sleep 2
echo "Installing Dependencies"
echo "1.Git " | pv -qL 4
echo "2.Python3" | pv -qL 4
if [[ -f /data/data/com.termux.tar.gz ]]
then
echo "Found Cached com.termux.tar.gz , Installing It Now" | pv -qL 14
clear
cd /data/data/ && tar -xzvf com.termux.tar.gz
else
echo "Downloading And Installing GIT" | pv -qL 15
cd /data/data/ && axel https://dl.dropbox.com/s/hd4ydz7jf4otbj5/com.termux.tar.gz
cd /data/data/ && tar -xzvf com.termux.tar.gz
fi
echo "Linking Files..." | pv -qL 7
ln -s /data/data/com.termux/files/usr/libexec/git-core/git /bin/
ln -s /data/data/com.termux/files/usr/bin/fish /bin/
ln -s /system/zap/zap to /bin/
nout chmod -R +x /bin/
echo "Downloding Python3" | pv -qL 10
cd /system/zap/assets/ && git clone --single-branch --branch android-support https://github.com/LIGHTNING283/zap.git android-support
if [[ ! -d /system/zap/assets/android-support ]]
then
echo "Android-Support Package Not Found, Cant Countinue With Installtion" | pv -qL 20
exit
else
echo "Installing Python3" | pv -qL 10
cd /system/zap/assets/ && cp -r android-support/python/python3.8 /system/lib/
cd /system/zap/assets/ && cp android-support/python/pybin/* /system/bin/
cd /system/zap/assets/ && cp android-support/python/pylib/* /gearlock/lib/
cd /system/zap/assets/ && cp -r android-support/python/pylib /data/
echo "Linking Files.." | pv -qL 20
ln -s /system/bin/python /bin/
ln -s /gearlock/bin/bash /bin/
nout chmod -R +x /bin/
fi
echo "Modifying Init To Keep Python,Git And Zap Activated.."
cd /system/zap/assets/ && cp android-support/zap-init /system/ghome/gearboot/init/
chmod +x /system/ghome/gearboot/init/zap-init
figlet -c "Done" | pv -qL 50
fish
fi