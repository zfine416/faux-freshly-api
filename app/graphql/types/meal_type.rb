# frozen_string_literal: true

module Types
  class MealType < Types::BaseObject
    field :name, String, null: false
    field :description, String, null: false
  end
end
