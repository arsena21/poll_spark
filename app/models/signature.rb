class Signature < ActiveRecord::Base
  attr_accessible :country, :email, :name, :total, :remember_token
  validates :email, presence: true
  validates :country, presence: true
  validates :name, presence: true
 has_many :users 


end
