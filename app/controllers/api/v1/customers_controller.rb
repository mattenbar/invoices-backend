class Api::V1::CustomersController < ApplicationController

  def index

  end

  def create

  end

  def show

  end

  def destroy

  end

  def customer_params
    params.require(:customer).permit(:id, :name, :email)
  end

end
