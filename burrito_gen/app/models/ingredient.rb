
class Ingredient < ActiveRecord::Base
  has_many :combinations
  has_many :burritos, through: :combinations
end
