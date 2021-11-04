class Meal < ApplicationRecord
  has_many :weekly_menu_meals
  has_many :weekly_menus, through: :weekly_menu_meals
end
