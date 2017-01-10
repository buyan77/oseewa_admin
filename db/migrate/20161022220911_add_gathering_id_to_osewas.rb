class AddGatheringIdToOsewas < ActiveRecord::Migration
  def change
    add_reference :osewas, :gathering, index: true, foreign_key: true
  end
end
