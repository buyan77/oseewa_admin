class CreateGatherings < ActiveRecord::Migration
  def change
    create_table :gatherings do |t|
      t.string :name
      t.datetime :date

      t.timestamps null: false
    end
  end
end
