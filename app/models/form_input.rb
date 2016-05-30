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
#

class FormInput < ActiveRecord::Base
  validates :logo, presence: true
  validates :company_name, presence: true
  validates :company_address, presence: true
  validates :first_name, presence: true
  validates :middle_name, presence: true
  validates :last_name, presence: true
end
