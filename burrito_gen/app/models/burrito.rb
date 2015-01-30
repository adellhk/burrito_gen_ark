
class Burrito < ActiveRecord::Base
  has_many :combinations
  has_many :ingredients, through: :combinations
end
