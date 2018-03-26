connectsl() {
if [ -z "$1" ]; then
    echo "Usage: connectsl <username> [vpn_endpoint]"
    echo "       if vpn_endpoint is not provided will default to ibm.remote.softlayer.com"
    return 1
else
  if [ -z "$2" ]; then
    endpoint=ibm.remote.softlayer.com
  else
    endpoint=$2
  fi
  echo ""
  echo "1. Copy your VIP access token `vipaccess show`"
  echo "2. Enter SL password below"
  echo "3. Paste your VIP access token"
  echo ""
  sudo openconnect -user=$1 $endpoint
fi
} 
