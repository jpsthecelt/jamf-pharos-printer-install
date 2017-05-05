#!/bin/bash

# jpsinger-5.3.17 jamf-lpadmin-script.sh, assumes that it's run on a MAC, using lpadmin & lpstat
# Sample script I created to demonstrate the use of:
# A) lpadmin for a pharos printer
# use of exit-code
# use of lpstat command
# Trying out new options
lpadmin -p "MyNewPharosQueueName" -E -D "PharosDisplayName" -v popup://PharosPrintServer/QueueName -o printer-is-shared=false -P "/Library/Printers/PPDs/Contents/Resources/RICOH_Pro_C4503.ppd"
echo "The LPADMIN returned status is: " $?
lpstat -p
