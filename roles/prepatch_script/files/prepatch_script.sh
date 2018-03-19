server=`hostname`
touch /tmp/Before_Patching.txt
exec >> /tmp/Before_Patching.txt
#echo " "
echo "############################# Current Output of $server ##################"
echo "-------------------## Current Date ##----------------------------------------------"
   sudo date
echo "-------------------## IP Address ##-------------------------------------------------------"
 sudo /sbin/ifconfig
echo "-------------------## Mounted FileSystems ##----------------------------------------------"
 /bin/df -hT
echo "-------------------## Fstab Status ##-----------------------------------------------------"
 /bin/cat /etc/fstab
echo "-------------------## List of the file under / ##-----------------------------------------------------"
 sudo /bin/ls -ltr /
echo "-------------------## MtabStatus ##-----------------------------------------------------"
 /bin/cat /etc/mtab
echo "-------------------## chkconfig Status ##-----------------------------------------------------"

echo "-------------------## Installed RPM's With Version ##-------------------------------------"
 /bin/rpm -qa | grep -i kernel
 /bin/rpm -qa | grep -i glibc

#echo "-------------------## updated RPM's List Version ##-------------------------------------"
#sudo /usr/bin/yum check-update
echo "-------------------## updated RPM's List Version ##-------------------------------------"
sudo /usr/bin/yum list kernel
sudo /usr/bin/yum list glibc
echo "-------------------## RedHat Version Info ##-------------------------------------"
cat /etc/redhat-release
echo "-------------------## Kernel Version Info ##-------------------------------------"
uname -a
echo "-------------------## SELinux Configuration file check ##-----------------------------------"
sudo grep SELINUX  /etc/selinux/config

echo "-------------------## SELinux Status ##------------------------------------------------------"
sudo /usr/sbin/sestatus
echo "-------------------## SELinux Status END ##--------------------------------------------------"
echo "-------------------## Installed Kernel RPM's ##-------------------------------------"
sudo rpm -qa|grep kernel*

echo "-------------------## DNS output ##-------------------------------------"
/bin/cat /etc/resolv.conf

echo "-------------------## ###***THE END****### ##-------------------------------------------"
