class AddGalleryImgToShapes < ActiveRecord::Migration
  def change
    add_column :shapes, :gallery_img, :string
  end
end
