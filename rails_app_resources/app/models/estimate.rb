class Estimate < ActiveRecord::Base
  has_many :epics
  has_many :goals, :through => :epics
  accepts_nested_attributes_for :epics, :goals
end
