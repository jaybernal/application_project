# == Schema Information
#
# Table name: form_inputs
#
#  id              :integer          not null, primary key
#  logo            :string
#  company_name    :string
#  company_address :string
#  first_name      :string
#  middle_name     :string
#  last_name       :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  company_id      :integer
#  input_name      :string
#

class FormInput < ActiveRecord::Base
  validates :input_name, presence: true

  belongs_to :company
end
