require "rubygems"
require "json"

@words = JSON.parse(File.read("words.json"))

@words.each do |k,v|
  puts k + " : " + v.to_s
end
