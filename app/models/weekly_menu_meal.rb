class WeeklyMenuMeal < ApplicationRecord
  belongs_to :meal
  belongs_to :weekly_menu
end
