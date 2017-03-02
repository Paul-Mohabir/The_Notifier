class ShiftsController < ApplicationController

  def new
    @shift =Shift.new
  end

  def create
    @shift = Shift.new(shift_params)
    if @shift.save
      redirect_to shifts_path
    else
      render :new
    end
  end

  def time_of_day
    if starting = '8'
      @time_of_day = 'Morning Shift'
    elsif
      starting = '16'
      @time_of_day = 'Afternoon Shift'
    else
      starting = '0'
      @time_of_day = 'Night Shift'
  end
end


end
