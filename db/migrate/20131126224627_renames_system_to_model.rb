class RenamesSystemToModel < ActiveRecord::Migration
  def change
    rename_table :systems, :models
  end
end
