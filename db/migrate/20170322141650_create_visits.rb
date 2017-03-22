class CreateVisits < ActiveRecord::Migration[5.0]
  def change
    create_table :visits do |t|
      t.references :dog, foreign_key: true
      t.date :visited_on
      t.timestamps
    end
  end
end
