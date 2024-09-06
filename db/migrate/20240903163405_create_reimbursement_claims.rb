class CreateReimbursementClaims < ActiveRecord::Migration[6.0]
  def change
    create_table :reimbursement_claims do |t|
      t.string :purpose
      t.decimal :amount
      t.date :date_of_expenditure
      t.string :receipt_url
      t.references :employee, null: false, foreign_key: true

      t.timestamps
    end
  end
end
