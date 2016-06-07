# == Schema Information
#
# Table name: layouts
#
#  id         :integer          not null, primary key
#  position   :integer
#  company_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Layout < ActiveRecord::Base
  validates :position, presence: true
  validates :company_id, presence: true

end
