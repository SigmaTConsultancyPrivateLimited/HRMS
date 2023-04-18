class RemovColumnInEmployee < ActiveRecord::Migration[7.0]
  def change
    remove_column :emmployees, :emmployee_id, :stirng
  end
end
