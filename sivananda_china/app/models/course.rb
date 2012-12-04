class Course < ActiveRecord::Base
  validates :tuition,:numericality =>{:greater_than_or_equal_to => 0.01}
  validates :name, :uniqueness =>true,:presence=>true
end
