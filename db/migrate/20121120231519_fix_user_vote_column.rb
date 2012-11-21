class FixUserVoteColumn < ActiveRecord::Migration

  def change
    change_table :users do |t|
      t.rename :vote, :votesleft
    end
  end


  def down
  end
end
