require "rubygems"
require "twitter"

Twitter.search("beiber").each do |status|
  puts status[:text]
end
