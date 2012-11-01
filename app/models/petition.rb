class Petition < ActiveRecord::Base
  has_one :user
  belongs_to :user
  has_many :microposts
  has_one :signature
  has_many :items
  
  after_initialize :pipi
  mount_uploader :pics, AvatarUploader
  attr_accessible :name, :rating, :description, :pics, :pass, :user_id, :links, :launched, :demands
  validates :user_id, presence: true
  validates :name, presence: true
  validates :rating, presence: true, :numericality => 
				{ :greater_than_or_equal_to => 0}
  
def pipi
  if new_record?
    self.rating ||= 0
	self.pass = "no"
	self.launched = "no"
  end
end




end
