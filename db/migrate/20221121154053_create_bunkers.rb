class CreateBunkers < ActiveRecord::Migration[7.0]
  def change
    create_table :bunkers do |t|
      t.string :index
      t.string :new
      t.string :create

      t.timestamps
    end
  end
end
