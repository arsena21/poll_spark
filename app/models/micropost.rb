class Micropost < ActiveRecord::Base
  attr_accessible :content, :user_id, :petition_id

  belongs_to :petition
  belongs_to :user
  
  default_scope order: 'microposts.created_at DESC'


end
