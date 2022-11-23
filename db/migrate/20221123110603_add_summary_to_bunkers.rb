class AddSummaryToBunkers < ActiveRecord::Migration[7.0]
  def change
    add_column :bunkers, :summary, :string
  end
end
