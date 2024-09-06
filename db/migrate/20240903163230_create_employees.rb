class CreateEmployees < ActiveRecord::Migration[6.0]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :email
      t.references :company, null: false, foreign_key: true

      t.timestamps
    end
  end
end
