require "rubygems"
require "tweetstream"

TweetStream.configure do |config|
  config.username = "username"
  config.password = "password"
  config.auth_method = :basic
end

TweetStream::Client.new.sample do |status|
  puts status.text
end
