class Meal < ApplicationRecord
  has_many :weekly_menus, through: :weekly_menu_meal
end
