class CreateHandAnalytics < ActiveRecord::Migration
  def change
    create_table :hand_analytics do |t|
      t.string :flop
      t.string :river
      t.string :turn
      t.integer :number_of_players
      t.string :my_hand

      t.timestamps
    end
  end
end
