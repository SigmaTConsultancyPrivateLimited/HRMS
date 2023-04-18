class AddColumnsToEmployee < ActiveRecord::Migration[7.0]
  def change
    add_column :emmployees, :training_id, :integer
    add_column :emmployees, :department_id, :integer
    add_column :emmployees, :project_id, :integer
  end
end
