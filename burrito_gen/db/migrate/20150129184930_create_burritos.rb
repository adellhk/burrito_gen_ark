
# require_relative '../../config/application.rb'

class CreateBurritos < ActiveRecord::Migration

  def change
    create_table :burritos do |t|
      t.string		:name
      t.boolean		:completely_vegan
      t.integer		:total_calories

      t.timestamps
    end
  end

end