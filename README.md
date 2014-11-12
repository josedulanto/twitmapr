# Twitmapr

Geolocalize twits around you and the globe

## Setup

Create a file 'application.yml' in app/config and paste this code, replace CODE_HERE with your Twitter application values.

```yaml
TWITTER_CONSUMER_KEY: CODE_HERE
TWITTER_CONSUMER_SECRET: CODE_HERE
TWITTER_OAUTH_TOKEN: CODE_HERE
TWITTER_OAUTH_TOKEN_SECRET: CODE_HERE
```

Use webrick to run the server or use thin server

```ruby
rails s thin
```

## Usage

Follow on-screen instructions once the application is running