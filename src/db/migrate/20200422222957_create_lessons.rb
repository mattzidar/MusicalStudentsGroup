class CreateLessons < ActiveRecord::Migration[6.0]
  def change
    create_table :lessons do |t|
      t.string :name
      t.integer :experience
      t.string :instrument
      t.string :location
      t.string :availability
      t.string :email

      t.timestamps
    end
  end
end
