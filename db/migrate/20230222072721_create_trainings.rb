class CreateTrainings < ActiveRecord::Migration[7.0]
  def change
    create_table :trainings do |t|
      t.string :training_name
      t.integer :batch
      t.string :employee_name
      t.string :feedback

      t.timestamps
    end
  end
end
