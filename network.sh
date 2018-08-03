# Get TXT records of a domain
dig -t txt example.com

# Get WiFi password
security find-generic-password -ga <network-name> | egrep ^password
