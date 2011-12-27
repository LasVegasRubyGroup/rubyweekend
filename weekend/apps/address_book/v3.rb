require "rubygems"
require "highline/import"

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
    puts "Name:\t\t" + address["first_name"] + " " + address["last_name"]
    puts "Phone Number:\t" + address["phone"]
    puts "Email Address:\t" + address["email"]
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
end

choose do |menu|
  menu.prompt = "What would you like to do? "
  menu.choice(:list) { list }
  menu.choice(:add) { add }
end
