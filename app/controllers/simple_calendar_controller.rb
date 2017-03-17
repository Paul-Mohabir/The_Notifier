class SimpleCalendarController < ApplicationController

  before_filter Date.beginning_of_week = :sunday

  def index
    @meetings = Meeting.all
  end
  def show

  end
end
