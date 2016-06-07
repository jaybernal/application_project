class AddCompanyIdToFormInputs < ActiveRecord::Migration
  def change
    add_column :form_inputs, :company_id, :integer
  end
end
