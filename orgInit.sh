#!/bin/bash

echo
echo meetup へ移動します ...
cd meetup

echo
echo scratch org を作成します ...
sfdx force:org:create -s -f config/project-scratch-def.json -a feature01

echo
echo org の一覧を表示します ...
sfdx force:org:list

# echo ユーザを作成します
# sfdx force:user:create -a admin-user -f config/user-def.json

echo
echo ソースコードを push します ...
sfdx force:source:push

echo
echo 権限セットを割り当てます ...
sfdx force:user:permset:assign -n SS_New_Component_List

echo
echo scratch org へアクセスします ...
sfdx force:org:open -p lightning/n/SS_New_Component_List
