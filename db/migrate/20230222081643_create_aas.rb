class CreateAas < ActiveRecord::Migration[7.0]
  def change
    create_table :aas do |t|

      t.timestamps
    end
  end
end
