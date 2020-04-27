class CreateGroups < ActiveRecord::Migration[6.0]
  def change
    create_table :groups do |t|
      t.string :name
      t.integer :yearLevel
      t.integer :peopleNeeded
      t.string :instrumentsNeeded
      t.string :musicStyle
      t.string :location
      t.string :email

      t.timestamps
    end
  end
end
