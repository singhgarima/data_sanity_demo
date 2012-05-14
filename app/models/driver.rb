class Driver < ActiveRecord::Base
  validates_presence_of :full_name, :age, :license_number
  validates_numericality_of :age, :greater_than => 25, :if => "license_type == 'heavy'"
  validates_numericality_of :age, :greater_than => 18
  validates_inclusion_of :license_type, :in => %w(heavy light)

end
