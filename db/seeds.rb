# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times do |i|
  FactoryBot.create(:weekly_menu, weeks_after_this: i)
end

WeeklyMenu.all.each do |wm|
  10.times { FactoryBot.create(:weekly_menu_meal, weekly_menu: wm) }
end
