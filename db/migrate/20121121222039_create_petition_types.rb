class CreatePetitionTypes < ActiveRecord::Migration
  def change
    create_table :petition_types do |t|
      t.integer :petition_id
      t.string :home
      t.string :book
      t.string :fun
      t.string :food
      t.string :fitness

      t.timestamps
    end
  end
end
