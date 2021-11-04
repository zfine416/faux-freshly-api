# frozen_string_literal: true

module Queries
  class GetWeeklyMenus < ApplicationQuery
    description "Get a list of all the Weekly Menus"

    type [ Types::WeeklyMenuType ], null: true

    def resolve
      WeeklyMenu.all
    end
  end
end
