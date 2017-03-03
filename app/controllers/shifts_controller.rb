class ShiftsController < ApplicationController
  def index
    @shift = Shift.all
  end
  def new
    @shift =Shift.new
  end
  def show
    @shift = Shift.find(params[:id])
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
  private
  def shift_params
    params.require(:shift).permit(:time_of_day)
  end

end
