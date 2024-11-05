#!/bin/zsh

if [ -z "$1" ];then
  echo "Please provide a log directory."
  exit 1
fi 

LOG_DIR=$1

ARCHIVE_DIR="./archives"
mkdir -p $ARCHIVE_DIR

TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
ARCHIVE_FILE="${ARCHIVE_DIR}/logs-archive_${TIMESTAMP}.tar.gz"
tar -czf "$ARCHIVE_FILE" -C "$LOG_DIR" .

echo "Archived at: $TIMESTAMP" >> archive_log.txt

echo "Logs archived successfully to $ARCHIVE_FILE"
