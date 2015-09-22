class Epic < ActiveRecord::Base
  belongs_to :estimate
  has_many :goals
  accepts_nested_attributes_for :goals
end
