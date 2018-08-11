#!/bin/bash
date1=`date`
successfile='Succes_file'
failure='failed_file'
cd  /home/ubuntu/RISHI/volumegit
git commit -am "new_files $date" && git push origin master
if test $? -eq 0
then
echo 'Success' >$successfile_$date1.txt
git push origin master
else
echo 'Failed' >$failure_$date1.txt
fi
