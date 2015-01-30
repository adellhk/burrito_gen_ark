
# require_relative '../../config/application.rb'

class CreateIngredients < ActiveRecord::Migration

  def change
    create_table :ingredients do |t|
      t.string		:name
      t.boolean		:vegan
      t.integer		:calories

      t.timestamps
    end
  end

end
