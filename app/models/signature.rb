class Signature < ActiveRecord::Base
  attr_accessible :country, :email, :name, :total
  validates :email, presence: true
  validates :country, presence: true
  validates :name, presence: true
  


end
