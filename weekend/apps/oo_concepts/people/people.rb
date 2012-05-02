class Animal
  
  def walk
    
  end
  
  def run
    
  end
  
  def eat(food)
    
  end
  
end

class Person < Animal
  
  attr_accessor :sex, :birthday, :name
  
  def initialize(male_or_female, name)
    self.sex = male_or_female
    self.name = name
    self.birthday = Time.now
  end
  
  def say(something)
    puts something
  end
  
end

module Marriage
  
  def join_in_matramony(person, other_person)
    puts "We are gathered here today to witness the marriage of #{person.name} and #{other_person.name}"
  end
  
  def take_a_vacation(person, other_person)
    puts "#{person.name} and #{other_person.name} go to Fiji."
  end
  
  def have_a_child(person, other_person)
    sex_of_baby = [:male, :female].sort_by { rand }.first
    name_of_baby = person.name[0..2] + other_person.name[-1..2]
    new_baby = Person.new(sex_of_baby, name_of_baby)
    puts "#{new_baby.name} is born on #{new_baby.birthday}!"
  end
  
end