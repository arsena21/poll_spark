class Petition < ActiveRecord::Base
  after_initialize :pipi
  mount_uploader :pics, AvatarUploader
  attr_accessible :name, :rating, :description, :pics, :pass
  
  validates :name, presence: true
  validates :rating, presence: true, :numericality => 
				{ :greater_than_or_equal_to => 0}

  
def pipi
  if new_record?
    self.rating ||= 0
	self.pass = "no"
  end
end





end