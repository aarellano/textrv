class RenameSystemIdToModelId < ActiveRecord::Migration
  def change
    rename_column :entities, :system_id, :model_id
  end
end
