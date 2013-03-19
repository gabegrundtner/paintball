class CreateGears < ActiveRecord::Migration
  def change
    create_table :gears do |t|
      t.integer :user_id
      t.float :cost
      t.string :name
      t.string :description
      t.boolean :for_sale

      t.timestamps
    end
  end
end
