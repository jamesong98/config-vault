#!/bin/bash
 
to=$1
subject=$2
body=$3

#Curl Version 1
json="{\"chat_id\": \"705504107\", \"text\": \"$to $subject $body\", \"disable_notification\": true}"

curl  -X POST -H 'Content-Type: application/json' -d "$json" https://api.telegram.org/bot763561022:AAHKBsLfYFgFdJNF6taCS-cdk-Hx7UiHEA8/sendMessage


#Curl Version 2
#curl"https://api.telegram.org/bot763561022:AAHKBsLfYFgFdJNF6taCS-cdk-Hx7UiHEA8/sendMessage?chat_id=705504107&text=Hello"

#Browser URL
#https://api.telegram.org/bot763561022:AAHKBsLfYFgFdJNF6taCS-cdk-Hx7UiHEA8/sendMessage?chat_id=705504107&text=Hello






#Useless after this line because is from website and unable to parse in parameter
#curl -X POST \
#       -H 'Content-Type: application/json' \
#       -d '{"chat_id": "705504107", "text": "[$1] [$subject] [$3]", "disable_notification": true}' \
#       https://api.telegram.org/bot763561022:AAHKBsLfYFgFdJNF6taCS-cdk-Hx7UiHEA8/sendMessage
#       -d "{'chat_id': '705504107', 'text': '[$1] [$subject] [$3]', 'disable_notification': true}" \
