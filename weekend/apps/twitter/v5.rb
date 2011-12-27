require "rubygems"
require "tweetstream"
require "json"

TweetStream.configure do |config|
  config.username = "username"
  config.password = "password"
  config.auth_method = :basic
end

@words = {}

TweetStream::Client.new.sample do |status|
  status.text.split(" ").each do |word|
    if @words[word]
      @words[word] += 1
    else
      @words[word] = 1
    end
  end

  print "."

  File.write("words.json", @words.to_json)
end
