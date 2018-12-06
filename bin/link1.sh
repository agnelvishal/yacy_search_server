
for address in `./up.sh $1`; do sleep 0.01; ./links.sh -s $address $2 done
sleep 2


