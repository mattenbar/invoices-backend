class Api::V1::InvoicesController < ApplicationController

  def index
    invoices = Invoice.all
    render json: invoices

  end

  def create
    invoice = Invoice.new(invoice_params)
    if invoice.save
      render json: invoices
    else
      render json: {error: 'Unable to creat invoice'}
    end

  end

  def show
    invoice = Invoice.find(params[:id])
    render json: invoice
  end

  def destroy
    invoice = Invoice.find(params[:id])
    invoice.destroy
  end

  private

  def invoice_params
    params.require(:invoice).permit(:total, :issue_date, :due_date, :paid, :description, :amount, :price)
  end

end

 