class DateRange
  def initialize(*dates)
    # exception for no args passed or args not a date
    if ( dates.nil? || dates.empty? || !dates[0].is_a?(Date) || (dates[1] && !dates[1].is_a?(Date)))
      raise Exceptions::NoDatesGiven
    end

    # exception for too many args passed
    if dates.count > 2
      raise Exceptions::TooManyArguments
    end

    # set if only one date given
    if dates[0].past? && dates[1].nil?
      first_date = dates[0].to_date
      second_date = Date.current
    elsif (dates[0].present? || dates[0].future?) && dates[1].nil?
      first_date = Date.current
      second_date = dates[0].to_date
    else
      first_date = dates[0].to_date
      second_date = dates[1].to_date
    end

    # reverse the dates if first_date > second_date
    if first_date <= second_date
      @start_date = first_date
      @end_date = second_date
    else
      @start_date = second_date
      @end_date = first_date
    end
  end

  # Getters for start_date and end_date
  attr_reader :start_date, :end_date

  # Check if a date is included in the range
  def include?(date)
    (@start_date..@end_date).cover?(date)
  end

  # Count the number of days in the range
  def number_of_days
    (end_date - start_date).to_i
  end
end
