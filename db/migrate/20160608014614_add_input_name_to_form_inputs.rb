class AddInputNameToFormInputs < ActiveRecord::Migration
  def change
    add_column :form_inputs, :input_name, :string
  end
end
