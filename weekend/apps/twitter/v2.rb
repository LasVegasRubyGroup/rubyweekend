require "rubygems"
require "twitter"

urls = Twitter.images("beiber", include_entities: true).collect { |status|
  status.media.collect { |media|
    media.url.inspect
  }
}.flatten

urls.each do |url|
  puts url
end
