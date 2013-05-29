class AddColourToOrder < ActiveRecord::Migration
  def change
    add_column :orders, :colour, :string
  end
end
