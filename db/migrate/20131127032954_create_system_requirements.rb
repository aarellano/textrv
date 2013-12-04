class CreateSystemRequirements < ActiveRecord::Migration
  def change
    create_table :system_requirements do |t|
      t.string :title
      t.text :description
      t.integer :system_id

      t.timestamps
    end
  end
end
