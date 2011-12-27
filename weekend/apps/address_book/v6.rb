require "rubygems"
require "json"

@address_book = if File.exists?("addresses.json")
  JSON.parse(File.read("addresses.json"))
else
  []
end

def print_address(address)
  puts "Name:\t\t" + address["first_name"] + " " + address["last_name"]
  puts "Phone Number:\t" + address["phone"]
  puts "Email Address:\t" + address["email"]
  puts "\n"
end

def list
  @address_book.each do |address|
    print_address(address)
  end
end

def add
  first_name = ask("First Name? ")
  last_name = ask("Last Name? ")
  phone = ask("Phone Number? ")
  email = ask("Email Address? ")

  @address_book << {
    "first_name" => first_name,
    "last_name" => last_name,
    "phone" => phone,
    "email" => email
  }

  File.write("addresses.json", @address_book.to_json)
end

def search
  query = ask("Query? ")
  addresses = @address_book.select do |address|
    "#{address["first_name"]} #{address["last_name"]}" =~ /#{query}/i
  end

  addresses.each do |address|
    print_address(address)
  end
end

puts "What would you like to do? "
puts "1. List Addresses"
puts "2. Add Address"
puts "3. Search Addresses"
print "Type number selection from above: "

case gets.chomp
when "1" then list
when "2" then add
when "3" then search
end
