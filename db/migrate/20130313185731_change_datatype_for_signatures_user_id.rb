class ChangeDatatypeForSignaturesUserId < ActiveRecord::Migration
  def change
     change_table :signatures do |t|
      t.change :user_id, :integer
     end
  end
end
