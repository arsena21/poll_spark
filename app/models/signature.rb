class Signature < ActiveRecord::Base
  attr_accessible :country, :email, :name, :total, :remember_token, :signaturepic
  validates :email, presence: true
  validates :country, presence: true
  validates :name, presence: true
  has_many :users 
  belongs_to :petition 
  mount_uploader :signaturepic, AvatarUploader

end
