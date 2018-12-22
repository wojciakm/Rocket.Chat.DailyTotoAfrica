#!/bin/ash

curl -X POST $ROCKET_CHAT_URL \
-H 'Content-Type: application/json' \
-d \
'{
"username":"daily toto",
"text":"https://www.youtube.com/watch?v=FTQbiNvZqaY",
"attachments":[
        	{	
		"title":"Africa By Toto",
        	"title_link":"https://www.youtube.com/watch?v=FTQbiNvZqaY",
        	"text":"Africa by Toto, the best song ever",
        	"color":"#764FA5"
		}
	]
}'

