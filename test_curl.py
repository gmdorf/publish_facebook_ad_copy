import requests

url = 'https://graph.facebook.com/v16.0/act_912169106589507/campaigns'
data = {
    'name': 'C20',
    'objective': 'LINK_CLICKS',
    'status': 'PAUSED',
    'special_ad_categories': ["NONE"],
    'access_token': 'EABZARULVZCm8MBALPNZAKfh5vZBLPueVQc5zNyMnVKMtZCaddeFtfg6AJRp6qMx4hklPF7AOP88y4eDJYCPOUN4CUNNyzXY9SC32ZCl9ms6SEZC8fHpZCXreZBfLINUsQytZCsT4lGzgjIX5A9rABLskmhCqEgUv7vDUlSrrYpIitPaDblOq8NTBJqwDpck3133qa8HtN3eIupftGgZCECz4vRLo8HTk8HWGw4ZD'
}

response = requests.post(url, data=data)

print(response.content)