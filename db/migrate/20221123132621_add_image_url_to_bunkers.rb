class AddImageUrlToBunkers < ActiveRecord::Migration[7.0]
  def change
    add_column :bunkers, :image_url, :string
  end
end
