class Api::V1::CustomersController < ApplicationController

  def index
    customers = Customer.all
    render json: customers
  end

  def create

  end

  def show

  end

  def destroy

  end

  def customer_params
    params.require(:customer).permit(:name, :email)
  end

end
