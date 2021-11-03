class CreateWeeklyMenuMeals < ActiveRecord::Migration[6.1]
  def change
    create_table :weekly_menu_meals do |t|
      t.references :meal
      t.references :weekly_menu
      t.timestamps
    end
  end
end
