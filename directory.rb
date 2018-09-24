
@freezer = [
  {bread: 1.5},
  {fish: 3.0},
  {chips: 0.8},
]

@cupboard = [
  {beans: 4},
  {custard: 3},
]

def view_contents
  loop do
    menu
    if @loc == "freezer"
      puts "The freezer contains:"
      @freezer.each do |item|
        item.each_pair {|k, v| puts "- #{k} (x #{v})"}
      end
    elsif @loc == "exit"
      exit
    end

    if @loc == "cupboard"
      @freezer.each do |item|
        item.each_pair {|k, v| puts "- #{k} (x #{v})"}
      end
    end
  end
end



def main
  puts "Kitchen Stock Management"
  puts "------============------"
  puts "-------Main  Menu-------"
end

def menu
  puts "Where to look?"
  @loc = gets.chomp
end

def selector
  puts "Make your choice"
  @selection = gets.chomp
end

def contents
  puts "1. View Location"
  puts "2. Add Ingredients"
  puts "------------------"
end


main
contents
selector
if @selection == "1"
  view_contents
else
  exit
end
