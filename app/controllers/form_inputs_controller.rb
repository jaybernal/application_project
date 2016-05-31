class FormInputsController < ApplicationController
  def new
    @form_input = FormInput.new
  end

  def create
    @form_input = FormInput.new(form_input_params)
    if @form_input.save
      redirect_to form_inputs_path, notice: "Form Successfully Added"
    else
      flash.now[:alert] = "Try Again"
      render new_form_input_path
    end
  end

  def index
    @form_inputs = FormInput.all
  end

  def show
  end

  def edit
  end

  def update
  end

  def destory
  end


  private def form_input_params
    params.require(:form_input).permit(:logo, :company_name, :company_address, :first_name, :middle_name, :last_name)
  end
end