class CustomerSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :name, :email
  has_many :invoices
end
