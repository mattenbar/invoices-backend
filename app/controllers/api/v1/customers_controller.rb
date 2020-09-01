class Api::V1::CustomersController < ApplicationController

  def index
    customers = Customer.all
    render json: {customer: CustomerSerializer.new(customers)}
  end

  def create
    customer = Customer.new(customer_params)
    if (customer.save)
      render json: {customer: CustomerSerializer.new(customer)}
    end

  end

  def show
    customer = Customer.find(params[:id])
    invoices = customer.invoices
    render json: {customer: CustomerSerializer.new(customer), invoices: InvoiceSerializer.new(invoices)}

  end

  def destroy
    customer = Customer.find(params[:id])
    customer.destroy

  end

  def customer_params
    params.require(:customer).permit(:name, :email)
  end

end
