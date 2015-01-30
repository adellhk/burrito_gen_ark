# Input: burrito ingredient table
# Output: randomly generated burrito.new
# require_relative 'burrito'

class BurritoGenerator
	def initialize
		@valid_burrito = false
	end

	def new_batch!(num_burritos = 1)
		num_burritos.times do
			ingredients = []
			until @valid_burrito
				ingredients = pick_ingredients
			end
			save_burrito(ingredients)
		end
	end

	def pick_ingredients(num_ingredients = 4)
		ingredients = []
		num_ingredients.times do
			random_ingredient_id = [*1..Ingredients.all.size].sample
			ingredients << Ingredients.where(id: random_ingredient_id)
		end
		@valid_burrito = true if ingredients.substantive?
	end

	def substantive?
		@ingredients.any?{|ingredient| ingredient.substantive == true}
	end

	def save_burrito(ingredients)
		Burrito.create(ingredients)
	end
end
