class UnbreakUsers < ActiveRecord::Migration[5.0]
  def change
  	add_column :boats, :user_id, :integer
  	add_column :jobs, :user_id, :integer
  end
end
