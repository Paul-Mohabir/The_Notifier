class CompaniesController < ApplicationController

  def index
    @companies = Company.all
  end

  def show
    @company = Company.find(params[:id])
    if current_user.admin == false && current_user.company_id != @company.id
      redirect_to root_path
    end
  end

  def new
    @company = Company.new
  end

  def edit
  end


  def create
    @company = Company.new(company_params)
  end

  private

    def company_params
      params.require(:company).permit(:name, :location, :contact_info, :picture)
    end
end
