class AddImageIdToFavorites < ActiveRecord::Migration[5.0]
  def change
    add_column :favorites, :imageID, :integer
  end
end
