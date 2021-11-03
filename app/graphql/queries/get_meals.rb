# frozen_string_literal: true

module Queries
  class GetMeals < ApplicationQuery
    description "Get a list of all the meals"

    type [ Types::MealType ], null: true

    def resolve
      Meal.all
    end
  end
end
