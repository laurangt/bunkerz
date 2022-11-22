class RemoveCreateFromBunkers < ActiveRecord::Migration[7.0]
  def change
    remove_column :bunkers, :create, :string
  end
end
