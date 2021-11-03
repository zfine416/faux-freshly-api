# frozen_string_literal: true

class DateTime
  class << self
    # @return [DateTime]
    # @return [NilClass] if date/time cannot be parsed
    # @param [String] parseable date/time string
    def safe_parse(date_time_string)
      return if date_time_string.nil?

      DateTime.parse(date_time_string)
    rescue ArgumentError
      nil
    end
  end
end

class Date
  DATE_FORMATS[:short] = "%F"
  DATE_FORMATS[:pretty] = "%B %-d %Y"
  DATE_FORMATS[:pretty_long] = "%A, %B %-d %Y"
  DATE_FORMATS[:pretty_short] = "%A, %B %-d"
  DATE_FORMATS[:day_date_year] = "%A, %b %-d, %Y"
  DATE_FORMATS[:short_day_date_year] = "%a, %b %-d, %y"
  DATE_FORMATS[:dow_month_day] = "%A, %b %-d"

  class << self
    # @return [Date]
    # @return [NilClass] if date cannot be parsed
    # @param [String] parseable date string
    def safe_parse(date_string)
      return if date_string.nil?

      Date.parse(date_string)
    rescue ArgumentError
      nil
    end

    # Convenience method to get the sunday offset by weeks from the current week
    # @return [Date]
    # @param offset [Integer] - add or subtract weeks
    # @example
    # Date.weeks_from_this_sunday(0) --> Sunday of this week
    # Date.weeks_from_this_sunday(1) --> Sunday of next week
    # Date.weeks_from_this_sunday(-1) --> Sunday of last week
    def weeks_from_this_sunday(offset)
      this_sunday.weeks_since(offset)
    end

    # Convenience method to get the sunday of the current week
    def this_sunday
      Date.current.beginning_of_week
    end

    # Convenience method to get the sunday of the week of a certain Date or Time
    # @parms date_time [Date or Time object]
    # @return [Date] sunday on the week of the given date
    def sunday_on(date_time)
      date_time.beginning_of_week.to_date
    end

    # Convenience method to get the saturday of the week of a certain Date or Time
    # @parms date_time [Date or Time object]
    # @return [Date] saturday on the week of the given date
    def saturday_on(date_time)
      date_time.beginning_of_week(:saturday).to_date
    end
  end

  # @return [String]
  def to_pretty_string
    to_s(:pretty)
  end
end
