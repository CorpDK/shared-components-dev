uid=$(ls -dn ${pwd} | grep -v grep | awk '{print $3}')
gid=$(ls -dn ${pwd} | grep -v grep | awk '{print $4}')
usermod -u $uid node
groupmod -g $gid node

sudo -u node /nonroottasks.bash
wait
