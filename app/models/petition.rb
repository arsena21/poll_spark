class Petition < ActiveRecord::Base
  has_one :user
  belongs_to :user
  has_many :microposts
  has_one :signature
  has_many :items
  has_one :petition_type
  
  accepts_nested_attributes_for :petition_type
  
  after_initialize :pipi
  mount_uploader :pics, AvatarUploader
  attr_accessible :name, :rating, :description, :pics, :pass, :user_id, :links, :launched, :demands, :petition_type_attributes
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

def last
	return Signature.last.total
end


end
