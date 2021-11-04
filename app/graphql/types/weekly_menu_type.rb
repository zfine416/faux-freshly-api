# frozen_string_literal: true

module Types
  class WeeklyMenuType < Types::BaseObject
    field :date, String, null: false
    field :meals, [ MealType ], null: false

    def date
      object.start_date.to_pretty_string
    end
  end
end
