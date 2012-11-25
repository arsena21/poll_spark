class Itempair < ActiveRecord::Base
  belongs_to :user  
  
  attr_accessible :item_id, :number, :user_id    
  
  
end
