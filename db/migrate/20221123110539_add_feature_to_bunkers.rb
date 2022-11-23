class AddFeatureToBunkers < ActiveRecord::Migration[7.0]
  def change
    add_column :bunkers, :feature, :string
  end
end
