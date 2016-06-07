class CompaniesController < ApplicationController
  def new
    @company = Company.new
  end

  def create
    @company = Company.new(company_params)
    if @company.save
      redirect_to companies_path, notice: "Company has been created"
    else
      flash.now[:alert] = "Try Again"
      render new_company_path
    end

  end

  def index
 
  end

  def show
  end

  def edit
  end

  def update
  end

  def destory
  end

  private def company_params
    params.require(:company).permit(:name)
  end


end
