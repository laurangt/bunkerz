class RemoveCityIdFromBunkers < ActiveRecord::Migration[7.0]
  def change
    remove_column :bunkers, :city_id, :bigint
  end
end
