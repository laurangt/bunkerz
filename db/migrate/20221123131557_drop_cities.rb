class DropCities < ActiveRecord::Migration[7.0]
  def change
    drop_table :cities
  end
end
