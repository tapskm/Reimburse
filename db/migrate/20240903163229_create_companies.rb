class CreateCompanies < ActiveRecord::Migration[6.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.integer :employee_count
      t.decimal :total_reimbursements

      t.timestamps
    end
  end
end
