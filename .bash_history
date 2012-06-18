sudo vi /etc/default/grub 
sudo update-grub
ping google.com
sudo cp /etc/X11/xorg.conf .
scp -r daedalus.local:.ssh/* .ssh/
ssh daedalus.local
scp daedalus.local:.bashrc .
vi .ssh/known_hosts 
set -o vi
scp daedalus.local:.profile .
scp daedalus.local:.bash_profile .
scp -r daedalus.local:.i3 .
scp -r daedalus.local:.i3status.conf .
cd Downloads/
ls
sudo dpkg -i google-chrome-stable_current_amd64.deb 
google-chrome 
sudo su root
exit
touch .Xdefaults
vi .bashrc 
exit
echo EDITOR
echo $EDITOR
exit
$EDITOR
exit
scp daedalus.local:.Xdefaults .
vi .Xdefaults 
exit
ls
scp daedalus.local:*.syn* .
scp daedalus.local:.syn* .
vi .synergy.conf 
sudo apt-get install synergys
sudo apt-get install synergy
synergys
ls
vi .i3/config 
vi .bashrc 
exit
ls
sudo apt-get install vim-nox
vim
vi .i3status.conf 
scp -r daedalus.local:.vim* .
cd .vim
ls
sudo apt-get install wine
ls
ps -ef
exit
ls
ssh daedalus.local
killall vncviewer
vncviewer 
xtightvncviewer 
xtightvncviewer --help
xtightvncviewer daedalus.local:1
ssh zzz.local
apt-cache search | grep client
apt-cache search vnc | grep client
sudo apt-get install xtightvncviewer
ssh snark.local
scp snark.local:src/lucid32.box .
ls
mv lucid32.box src/
ls
vi /home/gnidan/.i3status.conf 
cat /proc/loadavg 
mpstat
sudo apt-get sysstat
sudo apt-get install sysstat
cat /proc/cpuinfo 
cat /proc/cpuinfo  | grep load
mpstat 
man mpstat 
man mpstat -P 1
mpstat -P 1
mpstat -P 2
mpstat -P 3
mpstat -P ALL
uptime
man uptim
man uptime
uptime -V
uptime 
fancontrol
sudo apt-get install fancontrol
fancontrol 
sudo fancontrol 
sudo pwmconfig 
sudo fancontrol 
sudo fancontrol &
alsamixer 
exit
exit
vi
ls
cd src/
ls
cd cookbooks/
ls
vi site-cookbooks/
vi
ssh -p 2222 localhost
exit
cd .vim
ls
cd plugin/
ls
cd ../ruby/
ls
cd command-t/
ls
make clean
make
sudo apt-get install libruby
sudo apt-get install libruby-dev
make
apt-cache search ruby-dev
sudo apt-get install ruby-dev
make
sudo apt-get install build-essential
sudo make
cd ../../bundle/
ls
git clone https://github.com/vim-scripts/FuzzyFinder.git
ls
sudo apt-get install hg
sudo apt-get install mercurial
hg clone https://bitbucket.org/ns9tks/vim-l9
vi
exit
cd src/cookbooks/
ls
git pull
git checkout feature/cleanup
vi
ls
cd site-cookbooks/
ls
cd ui/
ls
vi attributes/
cd atr
cd attributes/
ls
exit
tq
exit
vi .Xdefaults 
xterm
vi .Xdefaults 
exit
ls
exit
ssh -p 2222 tempest
exit
sudo -p 2222 tempest
ssh -p 2222 tempest
exit
vi .Xdefaults 
exit
vi
ssh -p 2222 localhost
exit
ssh -p 2222 localhost
exit
ssh -p 2222 localhost
exit
vim --version
exit
ls
exit
ls
exit
ls
vi .Xdefaults 
exit
ssh daedalus
ssh daedalus.local
exit
sudo apt-get install open-sshd
sudo apt-get install opensshd
apt-cache search sshd
sudo apt-get install openssh-server
sudo vi /etc/init.d/fancontrol
sudo update-rc.d fancontrol defaults 99 01
sudo vi /etc/init.d/fancontrol
sudo update-rc.d fancontrol defaults 99 01
sudo vi /etc/init.d/fancontrol
sudo update-rc.d fancontrol defaults 99 01
sudo service fancontrol start
sudo service fancontrol stop
sudo killall fancontrol
sudo rm /var/run/fancontrol.pid 
sudo killall fancontrol
exit
ps -ef | grep fan
sudo fancontrol 
sudo fancontrol &
sudo
sudo echo "hi"
sudo fancontrol &
sudo killall fancontrol
sudo fancontrol &
clear
sudo fancontrol &
sudo apt-get install gkrellm
gkrellm 
killall gkrellm
ls /usr/sbn/fancontrol
ls /usr/sbin/fancontrol
test -f /usr/sbin/fancontrol
set -e
man set
set --help
man bash
set -e
man set
ls
ssh -p 2222.localhost
ssh -p 2222 localhost
cd src/cookbooks/
ls
cd site-cookbooks/
ls
cd datadog/
ls
cd templates/default/
ls
cd ..
ls
ssh -p 2222 localhost
ls
cd ../..
ack
sudo apt-get install ack-grep
sudo ln -s /usr/bin/ack-grep /usr/local/bin/ack
ack
ack ddmiddleware
cd ..
ack dd-agent
ack ddagent
cd site-cookbooks/
ls
cd datadog/
ls
cd files/
ls
cd default/
ls
vi dd_agent 
man start-stop-daemon 
exit
exit
sudo start-stop-daemon --status -p /var/run/fancontrol.pid
sudo start-stop-daemon --status -p /var/run/fancontrol.pid -x /usr/sbin/fancontrol
echo $0
sudo start-stop-daemon --status -p /var/run/fancontrol.pid -x /usr/sbin/fancontrol
echo $?
sudo service fancontrol stop
sudo start-stop-daemon --status -p /var/run/fancontrol.pid -x /usr/sbin/fancontrol
echo $?
sudo service fancontrol start
sudo start-stop-daemon --status -p /var/run/fancontrol.pid -x /usr/sbin/fancontrol && echo $?
sudo start-stop-daemon --status -p /var/run/fancontrol.pid -x /usr/sbin/fancontrol;; echo $?
sudo start-stop-daemon --status -p /var/run/fancontrol.pid -x /usr/sbin/fancontrol ; echo $?
sudo start-stop-daemon --status -o -q -p /var/run/fancontrol.pid -x /usr/sbin/fancontrol ; echo $?
sudo service fancontrol status
echo -n "hello"
c
cat $PIDFILE
cat /var/run/fancontrol.pid 
ps -p 2580
echo $?
if [ 0 ] ; then echo "hello" else echo "goodbye" fi;  ;
if [ 0 ] ; then  echo "hello"; else echo "bye"; fi
sudo service fancontrol status
cat $PIDFILE
car /var/run/fancontrol.pid 
cat /var/run/fancontrol.pid 
sudo service fancontrol status
sudo service fancontrol stop
sudo service fancontrol status
sudo service fancontrol start
sudo service fancontrol
man log_success_msg
log_success_msg --help
sudo service fancontrol
rm fancontrol 
cd src/
ls
cat fancontrol_initd 
vi /home/gnidan/.gitconfig 
cd init.d/
vi .git/config 
sensors
sudo service fancontrol stop
sudo service fancontrol start
cd ~/.vim
ls
cd bundle/
ls
cd ~/src/cookbooks/
ls
vi
cd ~/.vim/bundle/
ls
cd ../r
cd ../
ls
cd ruby/
ls
cd command-t/
ls
make clean
make
sudo apt-get install ruby-dev
sudo apt-get install ruby1.8-dev 
sudo apt-get install ruby
make
ls
make clean
ruby extconf.rb 
make
sudo make install
cd ~/src/ruby_curses_maze/
ack "$solve"
ack "\$solve"
sudo vi /etc/init.d/fancontrol
ls
cd src/
ls
mkdir init.d
mv fancontrol_initd init.d/fancontrol
cd init.d/
ls
git init
git add fancontrol
git commit -m "fancontrol service"
git config --global user.name "gnidan"
git config --global user.email "nick@gnidan.org"
git commit --amend --reset-author 
git remote add origin https://github.com/gnidan/init.d.git
git push -u origin master
git remote add origin ssh://github.com/gnidan/init.d.git
git remote remove origin
git remote rm origin
git remote add origin ssh://github.com/gnidan/init.d.git
git push -u origin master
cat ~/.ssh/id_rsa.pub 
vi /home/gnidan/.ssh/id_rsa.pub 
git push -u origin master
vi /home/gnidan/.ssh/id_rsa.pub 
git push -u origin master
git remote rm origin
git remote add origin ssh://git@github.com:gnidan/init.d.git
git push origin master
git push git@github.com:gnidan/undefprint-maze-generator.git
git push git@github.com:gnidan/init.d.git
git push git@github.com:gnidan/init.d.git master
git pull origin master
git pull
git pull -u origin master
git push
git pull
vi README
vi README.md
git add README.md
git commit -m "readme file"
git push
ls
vi
ls
cd ..
git clone git@github.com:gnidan/ruby_curses_maze.git
cd ruby_curses_maze/u
cd ruby_curses_maze/
ls
./game.rb 
ls
vi
export force_color=yes
. bashrc
. .bashrc
cat .bashrc | grep color
export force_color_prompt=yes
. .bashrc
ls
sudo useradd Gtinydns
sudo useradd Gndslog
sudo mkdir /etc/tinydns
sudo apt-get install tinydns
apt-cache search tinydns
sudo rmdir /etc/tinydns
sudo userdel Gtinydns 
sudo userdel Gdnslog
sudo userdel Gndslog
sudo vi /etc/network/interfaces 
sudo vi /etc/NetworkManager/NetworkManager.conf 
sudo ifdown eth0
sudo service stop NetorkManager
sudo service list
sudo service 
sudo serivce --status-all
sudo service --status-all
sudo service --status-all | [Nn]etwork
sudo service --status-all | grep [Nn]etwork
sudo service --status-all | ack [Nn]etwork
sudo service --status-all | grep "/[Nn]etwork/"
sudo service stop network-manager
sudo service network-manager stop
sudo service network-manager status
sudo ifup eth0
sudo service network-manager restart
sudo ifconfig
sudo reboot
exit
sudo fancontrol
sudo service fancontrol stop
sudo halt
sudo vi .synergy.conf 
vi .synergy.conf 
killall synergys && synergys
sudo update-rc.d 
man update-rc.d
sudo vi /etc/fstab
sudo mkdir /var1
sudo vi /etc/fstab
sudo reboot
cd /disk
ls
sudo rm -rf *
ls
ls -l
ls -la
sudo chmod og+w .
ls -la
ls
cp ~/Downloads/X17-24208.iso .
apt-cache search virtualbox
apt-cache search virtualbox | grep guest
sudo apt-get install virtualbox-guest-additions
sudo apt-get install virtualbox-guest-utils
sudo reboot
exit
winetricks steam
cd .wine/
ls
cd drive_c/
ls
wine
wine steam
wine --help
man wine
exit
cd .wine/drive_c/Program\ Files\ \(x86\)/
ls
cd Common\ Files/
ls
cd ..
ls
cd Program\ Files
ls
cd
winetricks steam
cd .wine/drive_c/
ls
cd users/
ls
cd gnidan/
ls
cd 
winetricks 
exit
sudo apt-get install virtualbox-guest-utils
sudo reboot
apt-cache search virtualbox | grep guest
sudo apt-get install virtualbox-guest-additions-iso
cd .VirtualBox/
ls
cd
sudo find / -name *VBox*Additions*
vi .i3/config 
sudo apt-get install ubuntu-restricted-extras
sudo apt-get install ranger
ranger 
ls
mkdir bin
mv Downloads/cgoban.jnlp 
mv Downloads/cgoban.jnlp  bin
cd bin
touch kgs
chmod +x kgs
vi kgs
javaws
sudo apt-get install icedtea-netx
cd
kgs
vi bin/kgs 
cgoban.jnlp
javaws cgoban.jnlp
cd bin
vi kgs 
kgs


vi kgs
alsamixer 
exit
echo "GOODBYE"
echo "HELLO"
killall xterm
exit
.bashrc
. .bashrc
su banki
exit
. .bashrc
cat .profile 
ack PS1
ls
vi .bash_profile 
. .bashrc 
echo $HOST
echo $HOSTNAME 
. .bashrc 
ls
clear
. .bashrc 
clear
. .bashrc 
clear
. .bashrc 
clear
exit
vi .bashrc
exit
clear
vi .bashrc 
. .bashrc
ls
. .bashrc
ls
alias
. .bashrc
sss
. .bashrc
sss
. .bashrc
sss
alias sss="s"
sss
alias sss="s"
. .bashrc
sss
. .bashrc
sss
. .bashrc
sss
ls
cat .Xdefaults 
which xrdb
. .bashrc
echo $LS_COLORS
dircolors -p
. .bashrc
ls
clear
. .bashrc
clear
. .bashrc
clear
. .bashrc
clear
. .bashrc
clear && .bashrc
clear && . .bashrc
cd /srv/co
cd src/cookbooks/
ls
cd src/cookbooks/
clear && . .bashrc
clear && . ~/.bashrc
clear
. ~/.bashrc 
source ~/.bashrc
shopt -s checkwinsize
exit
ssh daedalus.local
lsblk
sudo mkdir /mnt/external && sudo mount -t vfat /dev/sdd1 /mnt/external
sudo mkdir /mnt/external && sudo mount -t ext4 /dev/sdd1 /mnt/external
sudo mount -t ext4 /dev/sdd1 /mnt/external
cd /mnt/external/
ls
cd gnidan/
ls
rm *sgf
sudo rm *sgf
ls
cd Downloads/
ls
ls *avi
ls */*avi
ls *
ls * | grep avi
ls
la
ls
cd ..
ls
cd Music/
ls
cd ..
Videos/
ls
cd Vi
cd Videos/
ls
sudo mkdir /mnt/external2 && mount -t vfat /dev/sdd2 /mnt/external2
sudo mkdir /mnt/external2 && sudo mount -t vfat /dev/sdd2 /mnt/external2
cd ../../
ls
cd ../external2
ls
cd ..
ls
cd ..
ls
ssh daedalus.local
ls
ssh daedalus.local
cd
python
vi .bashrc 
ls
cat /etc/debian_chroot
echo $debian_chroot
ssh daedalus.local
ssh snark.local
ls
mv Downloads/box2d-js_0.1.0.zip src/
cd src/
ls
mkdir box2djs
mv box2d-js_0.1.0.zip box2djs/
cd box2djs/
unzip box2d-js_0.1.0.zip 
ls
cd demos/
ls
vi compound.js 
clear
exit
