class CreateTestSamples < ActiveRecord::Migration[7.0]
  def change
    create_table :test_samples do |t|
      t.string :name

      t.timestamps
    end
  end
end
