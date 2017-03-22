class CreateProvidedServices < ActiveRecord::Migration[5.0]
  def change
    create_table :provided_services do |t|
      t.references :visit, foreign_key: true
      t.references :service, foreign_key: true
      t.decimal :value, precision: 10, scale: 2
      t.timestamps
    end
  end
end
