#!/bin/bash

ps aux|grep runserver|grep -v grep |awk '{print}'

echo "是否终止这些进程默认结束？(y/n)"
read choice

if [[ $choice == "" ]]; then
  choice="y"
fi

if [ "$choice" = "y" ]; then
  # 终止进程
  echo "正在终止进程..."
  ps aux|grep runserver|grep -v grep |awk '{print $2}'
  echo "进程已终止"
else
  echo "未执行终止操作"
fi
