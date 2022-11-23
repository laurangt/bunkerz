class RemoveCapacityFromBunkers < ActiveRecord::Migration[7.0]
  def change
    remove_column :bunkers, :capacity, :integer
  end
end
