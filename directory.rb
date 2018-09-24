
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

def view_menu
  puts "Where to look?"
  puts "1. Freezer"
  puts "2. Cupboard"
  puts "3. Fridge"
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
#program starts
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
  elsif @loc == "3"
    @food.each do |type|
      if type[:location] == "fridge"
        puts sentence(type)
      end
    end
  end
elsif @selection == "2"
  puts "What would you like to add?"
  item = gets.chomp
  puts "What quantity of #{item}?"
  qty = gets.chomp.to_f
  puts "where is #{item} kept?"
  puts "1 = freezer"
  puts "2 = cupboard"
  puts "3 = fridge"
  loc = gets.chomp
  if loc == "1"
    @food << {name: item}
    @food << {quantity: qty}
    @food << {location: "freezer"}
  elsif loc == "2"
    @food << {name: item}
    @food << {quantity: qty}
    @food << {location: "cupboard"}
  elsif loc == "3"
    @food << {name: item}
    @food << {quantity: qty}
    @food << {location: "fridge"}
  end

print @food

end
