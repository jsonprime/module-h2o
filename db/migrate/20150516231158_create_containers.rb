class CreateContainers < ActiveRecord::Migration
  def change
    create_table :containers do |t|
      t.string :description
      t.integer :volume_ml
      t.boolean :refillable
      t.date :last_refill_date
      t.date :expiration_date
      t.boolean :empty
      t.references :user, index: true
      t.timestamps null: false
    end
  end
end
