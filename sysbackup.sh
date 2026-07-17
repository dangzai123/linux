#!/bin/bash
SRC=~/lab13
BACKUP=~/lab13_backup
mkdir -p $BACKUP

# (3) Sao chép tất cả các file .txt từ thư mục nguồn sang thư mục backup
cp $SRC/*.txt $BACKUP/

# (4) Tạo/Ghi đè dòng thời gian chạy vào file log
echo "Backup luc `date`" > $BACKUP/backup.log

# Ghi thêm danh sách các file đã được backup vào file log (Dùng >>)
ls $BACKUP >> $BACKUP/backup.log

# (5) In thông báo hoàn thành ra màn hình Terminal kèm ngày giờ
echo "Backup xong luc `date`"
