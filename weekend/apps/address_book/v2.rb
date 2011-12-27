require "rubygems"

@address_book = []

russ = {
  "first_name" => "Russ",
  "last_name" => "Smith",
  "phone" => "702-321-4912",
  "email" => "russ@bashme.org"
}

@address_book << russ

def list
  @address_book.each do |address|
    puts address["first_name"] + " " + address["last_name"]
    puts address["phone"]
    puts address["email"]
  end
end

puts "What would you like to do? "
puts "1. List Addresses"
print "Type number selection from above: "

choice = gets.chomp

list
