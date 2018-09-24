
@food = [
  {name: "bread", quantity: 1.5, location: "freezer"},
  {name: "fish", quantity: 3.0, location: "freezer"},
  {name: "chips", quantity: 0.8, location: "freezer"},
  {name: "beans", quantity: 4, location: "cupboard"},
  {name: "custard", quantity: 3, location: "cupboard"},
]
def header_main
  puts "Kitchen Stock Management"
  puts "------============------"
  puts "-------Main  Menu-------"
end




def sentence(hash)
  "#{hash[:name]} is in the #{hash[:location]}, you have #{hash[:quantity]}."
end

@food.each do |type|
  if type[:location] == "freezer"
    puts sentence(type)
  end
end



def view_menu
  puts "Where to look?"
  puts "1. Freezer"
  puts "2. Cupboard"
  @loc = gets.chomp
end

def selector
  puts "Make your choice"
  @selection = gets.chomp
end

def contents_main
  puts "1. View Location"
  puts "2. Add Ingredients"
  puts "------------------"
end

header_main
contents_main
selector
if @selection == "1"
  view_menu
  if @loc == "1"
    @food.each do |type|
      if type[:location] == "freezer"
        puts sentence(type)
      end
    end
  elsif @loc == "2"
    @food.each do |type|
      if type[:location] == "cupboard"
        puts sentence(type)
      end
    end
  end
elsif @selection == "2"
  #add ingredients
end
