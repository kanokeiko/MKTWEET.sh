#!/bin/bash -xv
#
# MKTWEET.sh
# Keiko Kano (Plain-Text,Inc.)

# �p�X/LANG�̐ݒ�
export LANG=ja_JP.UTF-8
export PATH=$PATH:/home/TOOL

# �ϐ��̒�`
tmp=/tmp/$$
home=/home/xxxx/MAKETWEET
now=$(date +%Y%m%d%H%M)

# ���O�����
exec 2> $home/LOG/log

grep $now $home/TWEETLIST > $tmp-nowtw
self 2/NF $tmp-nowtw > $tmp-tw

cat $tmp-tw | while read line ; do
echo $line | bti
done

# �I������
rm $tmp-*
exit 0