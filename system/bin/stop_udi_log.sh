
### Kill UDI_LOG_DECODE ####
string=$(ps | grep udi_log_decode)
array=(${string//:/ })
echo "Kill udi_log_decode Process ${array[1]}"
#kill -9 ${array[1]}
killall slsi_wlan_udi_log_decode

#### Kill UDI_LOG ####
string=$(ps | grep udi_log)
array=(${string//:/ })
echo "Kill udi_log Process ${array[1]}"
#kill -9 ${array[1]}
killall slsi_wlan_udi_log
