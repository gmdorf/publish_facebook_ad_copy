from facebook_business.adobjects.adaccount import AdAccount
from facebook_business.adobjects.campaign import Campaign
from facebook_business.api import FacebookAdsApi
from facebook_business.adobjects.targetingsearch import TargetingSearch
from facebook_business.adobjects.targeting import Targeting
import datetime
from facebook_business.adobjects.adset import AdSet
from facebook_business.adobjects.adimage import AdImage
from facebook_business import adobjects


access_token = 'EABZARULVZCm8MBAPDPyTjaqlq3rXWia6ZCVLOIX9nJRxMg7PgThvjuZCstZAPxBnZAjhrdFCTXSitIq9Q0AFsxaS4qSqjtCgJ54OCVhvzOozIfIig6ZAtu0QuXkRvhjKqL3jXxGFHnpimUYMGUgnoB7cKdYP22U2aXmHDX0Ii6cJSDGUBNs5TdKN7RVNBWqMKBX6sQQoyhxO1YOPMgZBKWyk'
app_secret = '6aac5326d2949ba31c93f86623e33895'
app_id = '6281856571907011'
ad_account_id = 'act_912169106589507'
page_id = ''
FacebookAdsApi.init(access_token=access_token)


params = {
	'name' : 'trxtest',
	'objective': 'POST_ENGAGEMENT',
	'status': 'ACTIVE',
  'special_ad_categories': []
}

campaign_result = AdAccount(ad_account_id).create_campaign(params=params)
print(campaign_result)


today = datetime.date.today()
start_time = str(today)
end_time = str(today + datetime.timedelta(weeks=1))

adset = AdSet(parent_id=ad_account_id)
adset.update({
    'name': 'my_adset',
    'campaign_id': campaign_result["id"],
    'daily_budget': 150,
    'billing_event': 'IMPRESSIONS',
    'optimization_goal': 'REACH',
    'bid_amount': 10,
    'targeting': {'geo_locations': {'countries': {'ZA'}},
				  'publisher_platforms': 'facebook'},
    'start_time': start_time,
    'end_time': end_time,
})

adset.create_ad(params={'status': 'ACTIVE'})

print(adset)

image = AdImage(parent_id=ad_account_id)
image[AdImage.Field.filename] = 'ENTER AD IMAGE PATH HERE'
image.remote_create()

image_hash = image[AdImage.Field.hash]
print(image)

fields = [
]
params = {
  'name': 'ENTER CREATIVE NAME HERE',
  'object_story_spec': {'page_id':page_id,'link_data':{'image_hash':image_hash,'link':'ENTER FACEBOOK PAGE LINK-PAGE_ID HERE','message':'ENTER AD MESSAGE HERE'}},
}
adcreative = AdAccount(ad_account_id).create_ad_creative(fields=fields, params=params)
print(adcreative)

fields = [
]
params = {
  'name': 'ENTER AD NAME HERE',
  'adset_id': adset['id'],
  'creative': {'creative_id': adcreative['creative_id']},
  'status': 'ACTIVE'
}
print(AdAccount(ad_account_id).create_ad(fields=fields, params=params))

