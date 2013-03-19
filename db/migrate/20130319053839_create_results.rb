class CreateResults < ActiveRecord::Migration
  def change
    create_table :results do |t|
      t.integer :tournament_id
      t.string :place
      t.string :team_name

      t.timestamps
    end
  end
end
