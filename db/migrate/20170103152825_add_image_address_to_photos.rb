class AddImageAddressToPhotos < ActiveRecord::Migration[5.0]
  def change
    add_column :photos, :image_address, :string
  end
end
