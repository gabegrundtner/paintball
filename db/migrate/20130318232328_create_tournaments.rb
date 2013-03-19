class CreateTournaments < ActiveRecord::Migration
  def change
    create_table :tournaments do |t|
      t.string :date
      t.string :location

      t.timestamps
    end
  end
end
