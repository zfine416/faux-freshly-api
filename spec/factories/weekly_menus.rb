FactoryBot.define do
  factory :weekly_menu do
    transient do
      weeks_after_this { 0 }
    end

    start_date { Date.weeks_from_this_sunday(weeks_after_this) }
  end
end
