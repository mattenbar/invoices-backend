class Invoice < ApplicationRecord
  belongs_to :customer
  validates :total, :issue_date, :due_date, :description, :amount, :price, presence: true
end
