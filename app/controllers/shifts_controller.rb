class ShiftsController < ApplicationController

  def show
  end

  def time_of_day
    if hour = '8'
      @time_of_day = 'Morning Shift'
    elsif
      hour = '16'
      @time_of_day = 'Afternoon Shift'
    else
      hour = '0'
      @time_of_day = 'Night Shift'
  end
end


end
