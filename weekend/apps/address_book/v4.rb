require "rubygems"
require "json"
require "highline/import"

@address_book = if File.exists?("addresses.json")
  JSON.parse(File.read("addresses.json"))
else
  []
end

def list
  @address_book.each do |address|
    puts "Name:\t\t#{address["first_name"]} #{address["last_name"]}"
    puts "Phone Number:\t#{address["phone"]}"
    puts "Email Address:\t#{address["email"]}"
    puts "\n"
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

choose do |menu|
  menu.prompt = "What would you like to do? "
  menu.choice(:list) { list }
  menu.choice(:add) { add }
end
