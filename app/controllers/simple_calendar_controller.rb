class SimpleCalendarController < ApplicationController
  def index
    @meetings = Meeting.all
  end
  def show

  end

end
