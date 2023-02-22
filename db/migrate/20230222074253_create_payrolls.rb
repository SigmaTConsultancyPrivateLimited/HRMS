class CreatePayrolls < ActiveRecord::Migration[7.0]
  def change
    create_table :payrolls do |t|
      t.integer :employee_id
      t.integer :salary
      t.string :payslip_for_the_month
      t.integer :paid_days
      t.string :loss_of_pay
      t.integer :days
      t.date :transaction_date
      t.time :transaction_time

      t.timestamps
    end
  end
end
