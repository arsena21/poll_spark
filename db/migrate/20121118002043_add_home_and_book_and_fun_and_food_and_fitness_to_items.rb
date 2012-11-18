class AddHomeAndBookAndFunAndFoodAndFitnessToItems < ActiveRecord::Migration
  def change
    add_column :items, :home, :string
    add_column :items, :book, :string
    add_column :items, :fun, :string
    add_column :items, :food, :string
    add_column :items, :fitness, :string
  end
end
