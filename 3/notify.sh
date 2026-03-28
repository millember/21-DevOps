#!/bin/bash
#!/bin/bash
#!/bin/bash

TOKEN="8657973244:AAFkR-OouGfFr1_OCSpPEX3w8gdGdHSJNNY"
CHAT_ID="1486945548"

MESSAGE="✅ Pipeline $CI_JOB_NAME finished with status: $CI_JOB_STATUS"

curl -s -X POST "https://api.telegram.org/bot$TOKEN/sendMessage" \
  -d chat_id="$CHAT_ID" \
  -d text="$MESSAGE"
