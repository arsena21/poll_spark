class Petition < ActiveRecord::Base
  attr_accessible :name, :rating
  validates :name, presence: true

end
