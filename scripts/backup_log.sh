#!/bin/bash
LOG_DIR="logs"
BACKUP_FILE="logs_backup_$(date +%Y%m%d_%H%M%S).tar.gz"

echo "Running backup script"

if [ ! -d "$LOG_DIR" ]; then
  echo "ERROR: logs folder not found"
  exit 1
fi

tar -czf "$BACKUP_FILE" "$LOG_DIR"
echo "Backup successful: $BACKUP_FILE"
