class CreateLayouts < ActiveRecord::Migration
  def change
    create_table :layouts do |t|
      t.integer :position
      t.integer :company_id

      t.timestamps null: false
    end
  end
end
