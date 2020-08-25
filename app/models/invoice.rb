class Invoice < ApplicationRecord
  belongs_to :customer
  validates :total, :issue_date, :due_date, :paid, :description, :amount, :price, presence: true
end
