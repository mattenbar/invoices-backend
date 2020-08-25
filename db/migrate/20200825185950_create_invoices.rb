class CreateInvoices < ActiveRecord::Migration[6.0]
  def change
    create_table :invoices do |t|
      t.float :total
      t.date :issue_date
      t.date :due_date
      t.boolean :paid
      t.string :description
      t.integer :amount
      t.float :price
      t.belongs_to :customer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
