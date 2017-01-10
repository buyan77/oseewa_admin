class CreateOsewas < ActiveRecord::Migration
  def change
    create_table :osewas do |t|
      t.string :comment

      t.timestamps null: false
    end
  end
end
