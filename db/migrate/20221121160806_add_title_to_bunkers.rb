class AddTitleToBunkers < ActiveRecord::Migration[7.0]
  def change
    add_column :bunkers, :title, :string
  end
end
