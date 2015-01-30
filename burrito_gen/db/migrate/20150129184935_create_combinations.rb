
# require_relative '../../config/application.rb'

class CreateCombinations < ActiveRecord::Migration

  def change
    create_table :combinations do |t|
      t.integer		:burrito_id
      t.integer		:ingredient_id

      t.timestamps
    end
  end

end
