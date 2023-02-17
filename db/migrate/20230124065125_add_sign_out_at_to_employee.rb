class AddSignOutAtToEmployee < ActiveRecord::Migration[7.0]
  def change
    add_column :employees, :sign_out_at, :datetime
  end
end
