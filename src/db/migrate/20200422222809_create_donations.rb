class CreateDonations < ActiveRecord::Migration[6.0]
  def change
    create_table :donations do |t|
      t.string :name
      t.string :instrument
      t.string :condition
      t.string :model
      t.string :location
      t.string :email

      t.timestamps
    end
  end
end
