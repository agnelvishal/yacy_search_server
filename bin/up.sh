#!/usr/bin/env sh
cd "`dirname $0`"
./apicall.sh "/Network.xml?page=1" | awk '/<address>/{ gsub("<address>","" );gsub("<\/address>","" ); print $0 }' | awk '{print $1}';

#port=$(grep ^port= "$YACY_DATA_PATH/SETTINGS/yacy.conf" |cut -d= -f2)
#./up1.sh localhost:$port

