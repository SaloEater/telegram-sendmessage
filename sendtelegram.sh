#!/bin/bash
CURL="/usr/bin/curl"
echo "STARTS"
while IFS=',' read -ra IDS_GROUP; do
  for GROUP_ID in "${IDS_GROUP[@]}"; do
    echo "SENDING TO $GROUP_ID"
    RETURN=$(${CURL}  -s --data "text=$MESSAGE" --data "chat_id=$GROUP_ID" 'https://api.telegram.org/bot'$TOKEN'/sendMessage')
    echo -e $RETURN
    echo "HAVE SENT"
  done
done <<< "$GROUP_IDS"
echo "ENDS"
exit 0;