NAME=$1
date=`date +_%m%d_%H%M`

FNAME="Dir_"$NAME""$date""
DIR_PATH="/sdcard/$FNAME"

mkdir $DIR_PATH

sleep 1
echo "### Start udi_log  ####"
slsi_wlan_udi_log stdout | slsi_wlan_udi_log_decode stdin > $DIR_PATH/udi_decode_$FNAME.txt &
sleep 1
