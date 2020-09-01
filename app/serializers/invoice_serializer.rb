class InvoiceSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :total, :issue_date, :due_date, :paid, :description, :amount, :price, :customer_id
end
