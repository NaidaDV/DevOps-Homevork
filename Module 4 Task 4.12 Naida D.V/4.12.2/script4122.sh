#!/bin/bash

cd project
ls | xargs md5sum > /home/denis/scriptdir/4_12/2/md5sum.txt
cd ..
g++ /home/denis/scriptdir/4_12/2/project/main.cpp /home/denis/scriptdir/4_12/2/project/hello.cpp /home/denis/scriptdir/4_12/2/project/factorial.cpp -o hello
vtar=$(date | awk '{print $2"_"$3"_"$4"_"$5}')
tar -cvzf /home/denis/scriptdir/4_12/2/project_$vtar.tar /home/denis/scriptdir/4_12/2/project

while true
do
orig=$(cat /home/denis/scriptdir/4_12/2/md5sum.txt) 
cd project
chek=$(ls | xargs md5sum)
cd ..
if [ "$chek" !=  "$orig" ]
then
cd project
ls | xargs md5sum > /home/denis/scriptdir/4_12/2/md5sum.txt
cd ..
g++ /home/denis/scriptdir/4_12/2/project/main.cpp /home/denis/scriptdir/4_12/2/project/hello.cpp /home/denis/scriptdir/4_12/2/project/factorial.cpp -o hello
vtar2=$(date | awk '{print $2"_"$3"_"$4"_"$5}')
tar -cvzf /home/denis/scriptdir/4_12/2/project_$vtar2.tar /home/denis/scriptdir/4_12/2/project
else
echo "No changes."
fi
sleep 60
done

exit 0
