#!/bin/bash -xv
#
# MKTWEET.sh
# Keiko Kano (Plain-Text,Inc.)

# パス/LANGの設定
export LANG=ja_JP.UTF-8
export PATH=$PATH:/home/TOOL

# 変数の定義
tmp=/tmp/$$
home=/home/xxxx/MAKETWEET
now=$(date +%Y%m%d%H%M)

# ログを取る
exec 2> $home/LOG/log

grep $now $home/TWEETLIST > $tmp-nowtw
self 2/NF $tmp-nowtw > $tmp-tw

cat $tmp-tw | while read line ; do
echo $line | bti
done

# 終了処理
rm $tmp-*
exit 0