class AddImageToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :profile_image, :integer
  end
end
