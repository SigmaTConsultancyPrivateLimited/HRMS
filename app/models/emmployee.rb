class Emmployee < ApplicationRecord
	belongs_to :project
	belongs_to :department
	belongs_to :training
	belongs_to :attendance
	belongs_to :contract_detail
	belongs_to :leave_report
	has_one :payroll
	has_one :performance_record
end
