class Itempair < ActiveRecord::Base
  belongs_to :user  
  
  attr_accessible :item_id, :number, :user_id, :itemname, :pic, :itemcost, :paid               
  after_initialize :paidno
  
private
def paidno
  if new_record?
    self.paid ||= "no"
  end
end

  
end
