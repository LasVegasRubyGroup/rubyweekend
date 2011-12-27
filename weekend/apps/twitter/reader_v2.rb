require "rubygems"
require "json"

@words = JSON.parse(File.read("words.json"))

puts "What would you like to see? "
puts "1. All Words"
puts "2. Top 10"

choice = gets.chomp

def print_word(word, count)
  puts word + " : " + count.to_s
end

case choice
when "1"
  @words.each do |k,v|
    print_word(k,v)
  end

when "2"
  @words.sort { |x,y| x <=> y }[0..10].each do |k,v|
    print_word(k,v)
  end
end
