class AddUserToBunkers < ActiveRecord::Migration[7.0]
  def change
    add_reference :bunkers, :user, null: false, foreign_key: true
  end
end
