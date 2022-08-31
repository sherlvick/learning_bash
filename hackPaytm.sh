#!/bin/bash  
#Script to extract paytm flights fare for specific date(eg. 30-10-2022)

response=$(curl -s 'https://travel.paytm.com/api/a/flights/v1/get_fares?adults=1&children=0&infants=0&class=E&client=web&destination=BLR&end_date=2022-11-19&source=PAT&start_date=2022-10-10' | jq -r '.body.fares["2022-10-30"]' )

echo "response:$response"
