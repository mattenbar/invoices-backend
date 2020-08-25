class Customer < ApplicationRecord
  has_many :invoices
  validates :name, :email, presence: true
end
