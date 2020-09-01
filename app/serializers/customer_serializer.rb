class CustomerSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :name, :email
end
