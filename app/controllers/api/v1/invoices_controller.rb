class Api::V1::InvoicesController < ApplicationController
  

  def index
    invoices = Invoice.all
    render json: {invoice: InvoiceSerializer.new(invoices)}

  end

  def create
    invoice = Invoice.new(invoice_params)
    invoice.total = invoice.amount * invoice.price
    invoice.paid = false
    if invoice.save
      render json: {invoice: InvoiceSerializer.new(invoice)}
    else
      render json: {error: 'Unable to creat invoice'}
    end

  end

  def show
    invoice = Invoice.find(params[:id])
    render json: {invoice: InvoiceSerializer.new(invoice)}
  end

  def destroy
    invoice = Invoice.find(params[:id])
    invoice.destroy
    invoices = Invoice.all
    render json: {invoice: InvoiceSerializer.new(invoices)}

  end

  private


  def invoice_params
    params.require(:invoice).permit(:customer_id, :total, :issue_date, :due_date, :paid, :description, :amount, :price)
  end

end

 