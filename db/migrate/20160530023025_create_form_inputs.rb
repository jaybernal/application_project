class CreateFormInputs < ActiveRecord::Migration
  def change
    create_table :form_inputs do |t|
      t.string :logo
      t.string :company_name
      t.string :company_address
      t.string :first_name
      t.string :middle_name
      t.string :last_name

      t.timestamps null: false
    end
  end
end
