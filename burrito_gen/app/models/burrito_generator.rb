# Input: burrito ingredient table
# Output: randomly generated burrito.new
# require_relative 'burrito'

class BurritoGenerator
	attr_accessor :ingredient_list

	def initialize
		@valid_burrito = false
		# @ingredient_list = []
	end

	def pick_ingredients
		new_ingredients = Ingredient.all.sample(7)
		@ingredient_list = new_ingredients.map(&:name)
	end


	def new_batch!(num_burritos = 1)
		num_burritos.times do
			ingredients = []
			until @valid_burrito
				ingredients = pick_ingredients
				@valid_burrito = true
			end
			save_burrito(ingredients)
		end
	end


	# def substantive?
	# 	@ingredients.any?{|ingredient| ingredient.substantive == true}
	# end

	def save_burrito(ingredients)
		Burrito.create(ingredients)
	end
end
