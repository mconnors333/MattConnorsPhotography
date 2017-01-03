class AddUserIdToFavorites < ActiveRecord::Migration[5.0]
  def change
    add_column :favorites, :userID, :integer
  end
end
