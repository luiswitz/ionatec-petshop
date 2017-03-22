class CreateServices < ActiveRecord::Migration[5.0]
  def change
    create_table :services do |t|
      t.string :name
      t.decimal :value, precision: 5, scale: 2
      t.timestamps
    end
  end
end
