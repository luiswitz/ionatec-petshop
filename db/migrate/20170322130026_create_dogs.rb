class CreateDogs < ActiveRecord::Migration[5.0]
  def change
    create_table :dogs do |t|
      t.string :name
      t.integer :gender
      t.references :breed, foreign_key: true
      t.string :castrated
      t.date :birthdate
      t.references :owner, foreign_key: true
      t.timestamps
    end
  end
end
