# frozen_string_literal: true

class CreateMeals < ActiveRecord::Migration[6.1]
  def change
    create_table :meals do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
