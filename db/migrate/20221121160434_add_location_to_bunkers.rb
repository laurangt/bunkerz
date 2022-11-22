class AddLocationToBunkers < ActiveRecord::Migration[7.0]
  def change
    add_column :bunkers, :location, :string
  end
end
