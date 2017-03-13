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
    @company = Company.find(params[:id])
  end


  def create
    @company = Company.new(company_params)
  end

  def update

    @company = Company.find(params[:id])

    respond_to do |format|
      if @company.update(company_params)
        format.html { redirect_to @company, notice: "Company info updated" }
        format.json { render :show, status: :ok, location: @company }
      else
        format.html { render :edit }
        format.json { render json: @company.errors, status: :unprocessable_entity }
      end
    end
  end

  private

    def company_params
      params.require(:company).permit(:name, :location, :contact_info, :picture)
    end
end
