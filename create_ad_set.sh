# Note that daily_budget is specified in cents, not rands
curl \
  -F 'name=My Ad Set 17' \
  -F 'optimization_goal=REACH' \
  -F 'billing_event=IMPRESSIONS' \
  -F 'bid_amount=2' \
  -F 'daily_budget=100000' \
  -F 'campaign_id=23853261405220503' \
  -F 'targeting={"geo_locations": {"countries":["US"]}, "interests": [{"id": 6003139266461, "name": "Movies"}]}' \
  -F 'start_time=2020-10-06T04:45:17+0000' \
  -F 'status=PAUSED' \
  -F 'access_token=EABZARULVZCm8MBABHYy8fZBeiuA6rzLrpECofrFJQEldUITbIo2FkY1rrTTqpQE3aMWDVjaZABA34ecb1mNapmYHCKXZAv7cxGZC8SOSQmTMVvdER7aE6tf82SFrgvBZBOsw0yriDTwN9kKN5FbQf5u1MhdaxyQvshb7oD7phSqUYgZCBr1NI9EYGrLCSt68uZAjZAVljCqo5tjF35ZCai0Yp9W' \
  https://graph.facebook.com/v16.0/act_912169106589507/adsets

printf "\n"