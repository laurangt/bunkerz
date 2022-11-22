class RemoveIndexFromBunkers < ActiveRecord::Migration[7.0]
  def change
    remove_column :bunkers, :index, :string
  end
end
