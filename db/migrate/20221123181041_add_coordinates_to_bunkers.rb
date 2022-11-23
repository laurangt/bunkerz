class AddCoordinatesToBunkers < ActiveRecord::Migration[7.0]
  def change
    add_column :bunkers, :latitude, :float
    add_column :bunkers, :longitude, :float
  end
end
