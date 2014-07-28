require 'csv'
require 'sqlite3'


class Reservation
  def initialize(first_name, last_name, time, party_size = 1, special_occasion = 'none', phone )
    @first_name
    @last_name
    @time
    @party_size
    @special_occasion
    @phone
  end


  def to_s
    puts " 
    Reservation for #{@first_name} #{@last_name}
    Party of #{@party_size}
    at #{@time}
    "
  end
end

class Tables
  def initialize(capacity, occupied = false)
    @capacity = capacity
    @occupied = occupied
  end
end


class Recipe
  attr_reader :id
  def initialize(recipe = {})
    @id = recipe["id"]
    @name = recipe["name"]
    @description = recipe["description"]
    @ingredients = recipe["ingredients"]
    @directions = recipe["directions"]

  end

  def to_s
   puts "#{@id}. #{@name} - #{@description}
      Ingredients:
      #{@ingredients}

      How to Make:
      #{@directions}"
  end

  def to_list
    puts "#{@id}. #{@name}"
  end
end


class Restaurant
  def initialize
    @reservations = []
    @recipes = []
  end


  # RESERVATIONS
  def make_reservation(first_name, last_name, party_size, special_occasion)


    # check if there is a spot available at that time
    @reservations << reservation.new(first_name, last_name, @party_size, @special_occasion)
  end


  def find_next_available_time(party_size)
  end

  def find_reservation(name)

  end

  # RECIPES
  def add_recipe

  end

  def load_recipes(filename)
    CSV.foreach(filename, :headers =>true) do |row|
      @recipes << Recipe.new(row)
    end
  end

  def find_recipe_by_id(id)
    @recipes.each do |recipe|
      if id.to_s == recipe.id
        return recipe
      end
    end
    raise "Yo, recipe #{id} doesn't exist"
  end

  def print_recipe(id)
    find_recipe_by_id(id).to_s
  end

  def list_all_recipes
    @recipes.each do |recipe|
      recipe.to_list
    end
  end

end


bistro = Restaurant.new
bistro.load_recipes('recipes.csv')
# bistro.print_recipe(1)
bistro.list_all_recipes

