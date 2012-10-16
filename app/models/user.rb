class User < ActiveRecord::Base
  belongs_to :signatures 
 
  attr_accessible :name, :email, :vote, :country, :password, :password_confirmation, :remember_token
  has_secure_password
  after_initialize :bobo

  before_save { |user| user.email = email.downcase }
  before_save :create_remember_token
  
  validates :name, presence: true, length: { maximum: 50 }, :on => :create
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence:   true,
                    format:     { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 6 }, :on => :create
  validates :password_confirmation, presence: true, :on => :create
  validates :vote, presence: true, :numericality => 
				{ :greater_than_or_equal_to => 0, :less_than_or_equal_to => 5 }
  
def bobo
  if new_record?
    self.vote ||= 5
  end
end
  
  

    def create_remember_token
        if new_record?
			self.remember_token = SecureRandom.urlsafe_base64
		end
    end
  
  
  end
