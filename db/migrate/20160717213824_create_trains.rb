class CreateTrains < ActiveRecord::Migration
  def change
    create_table :trains do |t|
      t.string :departs
      t.string :arrives
      t.string :line

      t.timestamps null: false
    end
  end
end
