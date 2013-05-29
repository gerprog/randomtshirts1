class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :name
      t.string :title
      t.text :content
      t.string :lrg_image_url
      t.text :text

      t.timestamps
    end
  end
end
