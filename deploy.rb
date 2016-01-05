require('twitter')
require('open-uri')
require('json')
client = Twitter::REST::Client.new do |config|
  config.consumer_key        = ENV["YOUR_CONSUMER_KEY"]
  config.consumer_secret     = ENV["YOUR_CONSUMER_SECRET"]
  config.access_token        = ENV["YOUR_ACCESS_TOKEN"]
  config.access_token_secret = ENV["YOUR_ACCESS_SECRET"]
end

res = JSON.parse(open("https://api.github.com/repos/luben93/luben93.github.io/commits").read)

client.update("i wrote about #{res[0]['commit']['message']}, check it out check out my blog https://luben93.github.io #blog")