class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :user_id
      t.integer :vote1
      t.integer :vote2
      t.integer :vote3

      t.timestamps
    end
  end
end
