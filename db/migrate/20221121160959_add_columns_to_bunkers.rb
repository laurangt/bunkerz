class AddColumnsToBunkers < ActiveRecord::Migration[7.0]
  def change
    add_column :bunkers, :description, :string
    add_column :bunkers, :capacity, :integer
    add_column :bunkers, :price, :float
  end
end
