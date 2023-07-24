# newsapi_demo

NewsAPI demo


## Auth Token

Put your token here:
lib/src/domain/services/auth_service.dart

Limit is 100 requests per day 
Also uncomment one - maybe it will work


## How it works

When none of sources is selected the favorite articles are displayed (from local DB)

When you select one or more sources the articles are updated (from API)

When you tap the favorite button you add or delete article from favorites (local DB)

