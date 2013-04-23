class RemoveDateAddDateToTournament < ActiveRecord::Migration
  def change
  	self.up
  	remove_column :tournaments, :date
  	add_column :tournaments, :date, :date
  end

  
end
