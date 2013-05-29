class AddLrgImageUrlToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :lrg_image_url, :string
  end
end
