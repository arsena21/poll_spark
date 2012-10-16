class AddRememberTokenToSignatures < ActiveRecord::Migration
  def change
    add_column :signatures, :remember_token, :string
  end
end
