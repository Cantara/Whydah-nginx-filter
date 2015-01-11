#!/bin/sh

export IAM_MODE=TEST_LOCALHOST

A=UserAdminService
V=LATEST
JARFILE=$A-$V.jar

pkill -f $A

wget --no-clobber --user=altran --password=l1nkSys -O $JARFILE "http://mvnrepo.cantara.no/service/local/artifact/maven/content?r=snapshots&g=net.whydah.identity&a=$A&v=$V&p=jar"
nohup java -jar -DIAM_CONFIG=useradminservice.TEST.properties $JARFILE &

tail -f nohup.out
