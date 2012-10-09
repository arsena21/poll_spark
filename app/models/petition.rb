class Petition < ActiveRecord::Base
  after_initialize :pipi

  attr_accessible :name, :rating
  validates :name, presence: true
  validates :rating, presence: true, :numericality => 
				{ :greater_than_or_equal_to => 0}

  
def pipi
  if new_record?
    self.rating ||= 0
  end
end



end
