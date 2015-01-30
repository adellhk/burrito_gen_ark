
class Burrito < ActiveRecord::Base
  has_many :combinations
  has_many :ingredients, through: :combinations

  def total_calories
    total = 0
    self.ingredients.each do |ingredient|
      total += ingredient.calories
    end
    return total
  end

  def vegan?
    self.ingredients.each do |ingredient|
      if ingredient.vegan == false
        return false
      end
    end
    return true
  end

end
