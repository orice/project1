class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :pokername
      t.string :rank
      t.string :email

      t.timestamps
    end
  end
end
