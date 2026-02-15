#!/bin/bash

NUMBER=$1
# -gt - greater than
# -lt - less than
# -eq - equals
# -ne - not equal
if [ $NUMBER -g 20 ]; then
echo "Given number $NUMBER  is greater than 20"
else 
echo "Given number $NUMBER  is less than 20"
fi  