class WeeklyMenu < ApplicationRecord
  has_many :weekly_menu_meals
  has_many :meals, through: :weekly_menu_meals
end
