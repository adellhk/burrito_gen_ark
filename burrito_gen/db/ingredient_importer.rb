require_relative '../app/models/ingredient'

module IngredientImporter
  def self.import(filename = File.dirname(__FILE__) + "/../db/seed_burrito_ingredients.csv")
    field_names = nil
    Ingredient.transaction do
      File.open(filename).each do |line|
        data = line.chomp.split(',')
        if field_names.nil?
          field_names = data
        else
          attribute_hash = Hash[field_names.zip(data)]
          ingredient = Ingredient.create!(attribute_hash)
        end
      end
    end
  end
end