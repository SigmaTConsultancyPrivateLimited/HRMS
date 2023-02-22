class CreateAttendances < ActiveRecord::Migration[7.0]
  def change
    create_table :attendances do |t|
      t.integer :employee_id
      t.string :employee_name
      t.string :attendance_by
      t.string :shift
      t.datetime :in_time
      t.datetime :out_time
      t.string :status

      t.timestamps
    end
  end
end
