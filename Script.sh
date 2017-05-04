#/bin/bash
echo "enter command"
read command
echo "enter username"
read username
echo "Enter Key path"
read path
if [ -z $username ] || [ -z $command ] || [ -z $path ]; then
   echo "Please enter the valid details"
   exit
else
   continue
fi

host=`cat /etc/hostname | tr "," "\n"`
for x in $host
do
ssh -i $path $username@$x $command
done
