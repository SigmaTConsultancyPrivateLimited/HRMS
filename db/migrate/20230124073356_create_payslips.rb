class CreatePayslips < ActiveRecord::Migration[7.0]
  def change
    create_table :payslips do |t|
      t.integer :employee_id
      t.integer :salary
      t.string :payslip_for_the_month
      t.date :paid_days
      t.string :Lop
      t.date :days
      t.date :transaction_date
      t.datetime :transaction_time

      t.timestamps
    end
  end
end
