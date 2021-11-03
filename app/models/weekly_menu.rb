class WeeklyMenu < ApplicationRecord
  has_many :meals, through: :weekly_menu_meal
end
