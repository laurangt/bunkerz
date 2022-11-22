class RemoveNewFromBunkers < ActiveRecord::Migration[7.0]
  def change
    remove_column :bunkers, :new, :string
  end
end
