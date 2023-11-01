#!/bin/bash

# Stop Nginx service


# Display the initial message
echo "Checking website availability......"

# Sleep for 3 seconds
sleep 3

# Display the "I am using too much resources" message 3 times with a 1-second interval
for ((i=1; i<=3; i++)); do
    echo "I am using too much resources"
    sleep 1
done

# Check if Nginx service is still running
if systemctl is-active --quiet nginx; then
    echo "Nginx service stopped because of OOM (Out of Memory), please reschedule this cronjob to another time"
fi



# Exit the script
exit 0