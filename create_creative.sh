curl \
  -F 'name=Sample Creative' \
  -F 'object_story_spec={ 
    "link_data": { 
      "call_to_action": {"type":"SIGN_UP","value":{"link":"http://www.google.com"}}, 
      "link": "http://www.google.com", 
      "message": "try it out" 
    }, 
    "page_id": "117073034655216" 
  }' \
  -F 'access_token=EABZARULVZCm8MBABHYy8fZBeiuA6rzLrpECofrFJQEldUITbIo2FkY1rrTTqpQE3aMWDVjaZABA34ecb1mNapmYHCKXZAv7cxGZC8SOSQmTMVvdER7aE6tf82SFrgvBZBOsw0yriDTwN9kKN5FbQf5u1MhdaxyQvshb7oD7phSqUYgZCBr1NI9EYGrLCSt68uZAjZAVljCqo5tjF35ZCai0Yp9W' \
  https://graph.facebook.com/v16.0/act_912169106589507/adcreatives

printf "\n"