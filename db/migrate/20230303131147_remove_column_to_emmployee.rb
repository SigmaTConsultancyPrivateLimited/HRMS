class RemoveColumnToEmmployee < ActiveRecord::Migration[7.0]
  def change
    remove_column :emmployees, :emmployee_id, :string
  end
end
