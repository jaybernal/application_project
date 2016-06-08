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
    @form_input = FormInput.find(params[:id])
  end

  def edit
    @form_input = FormInput.find(params[:id])
  end

  def update
    @form_input = FormInput.find(params[:id])
    if @form_input.update_attributes(form_input_params)
      redirect_to form_input_path
    end
  end

  def destroy
    @form_input = FormInput.find(params[:id])
    @form_input.destroy

    flash[:success] = "Input has been deleted"

    redirect_to form_inputs_path, notice: "Successfully"
  end


  private def form_input_params
    params.require(:form_input).permit(:input_name)
  end
end