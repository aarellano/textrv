class CreateSystems < ActiveRecord::Migration
  def change
    create_table :systems do |t|
      t.integer :entity_id
      t.integer :model_id
      t.string :name

      t.timestamps
    end
  end
end
