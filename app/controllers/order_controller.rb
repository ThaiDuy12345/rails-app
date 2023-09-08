class OrderController < ApplicationController
  skip_before_action :verify_authenticity_token

  def get_all
    orderModel = Order.all
    render :json => orderModel
  end

  def get_by_id 
    orderModel = Order.find(params[:id])
    render :json => orderModel
  end

  def create
    orderModel = Order.new({
      :account_id=> params[:name],
      :product_id => params[:price]
    })
    orderModel.save
    render :json => orderModel
  end

  def update
    orderModel = Order.find(params[:id])
    orderModel.update({
      :account_id=> params[:name],
      :product_id => params[:price]
    })
    render :json => orderModel
  end

  def delete
    orderModel = Order.find(params[:id])
    orderModel.delete
    render :json => { :status => :success ,:message => "Successfully Deleted!!" }
  end
end
