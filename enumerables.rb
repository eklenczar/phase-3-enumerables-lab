require 'pry'

def spicy_foods 
  [
    { name: 'Green Curry', cuisine: 'Thai', heat_level: 9 },
    { name: 'Buffalo Wings', cuisine: 'American', heat_level: 3 },
    { name: 'Mapo Tofu', cuisine: 'Sichuan', heat_level: 6 }
  ]
end

def get_names(spicy_foods)
  spicy_foods.map do |food|
    food[:name]
    # binding.pry
  end
end

def spiciest_foods(spicy_foods)
  spicy_foods.filter do |food|
    food[:heat_level] > 5
    # binding.pry
  end
end

def print_spicy_foods(spicy_foods)
  # binding.pry
  spicy_foods.each do |food|
    puts "#{food[:name]} (#{food[:cuisine]}) | Heat Level: #{'🌶' * food[:heat_level]}"
  end
end

def get_spicy_food_by_cuisine(spicy_foods, cuisine)
  spicy_foods.find do |food|
    food[:cuisine] == cuisine
  end
end

def sort_by_heat(spicy_foods)
  spicy_foods.sort_by do |food|
    food[:heat_level]
  end
end

def print_spiciest_foods(spicy_foods)
  spicy_foods.filter do |food|
    if food[:heat_level] > 5
      puts "#{food[:name]} (#{food[:cuisine]}) | Heat Level: #{'🌶' * food[:heat_level]}"
    end
  end
end

def average_heat_level(spicy_foods)
  spicy_foods.sum { |food| food[:heat_level] / 3}
end
