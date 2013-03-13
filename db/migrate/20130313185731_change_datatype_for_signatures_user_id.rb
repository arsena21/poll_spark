class ChangeDatatypeForSignaturesUserId < ActiveRecord::Migration
  def change
     connection.execute(%q{
    alter table signatures
    alter column user_id
    type integer using cast(user_id as integer)
    })
  end
end
