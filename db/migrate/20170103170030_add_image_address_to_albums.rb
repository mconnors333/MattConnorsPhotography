class AddImageAddressToAlbums < ActiveRecord::Migration[5.0]
  def change
    add_column :albums, :image_address, :string
  end
end
