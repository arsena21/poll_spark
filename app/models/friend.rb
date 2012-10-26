class Friend < ActiveRecord::Base
  attr_accessible :email, :user_id
  belongs_to :user
  
  before_save { |friend| friend.email = email.downcase }
  
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence:   true,
                    format:     { with: VALID_EMAIL_REGEX }
	
end
