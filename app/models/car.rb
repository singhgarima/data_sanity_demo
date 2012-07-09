class Car < ActiveRecord::Base
  uploadable :mandatory_fields => [:company, :model], :optional_fields => [:price, :category]
  validates_presence_of :company, :model
  validates_numericality_of :price, :greater_than => 100000
  validates_inclusion_of :category, :in => %w(two three four)
end
