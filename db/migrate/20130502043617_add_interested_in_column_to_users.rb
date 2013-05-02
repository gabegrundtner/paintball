class AddInterestedInColumnToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :interested_in, :text
  end
end
