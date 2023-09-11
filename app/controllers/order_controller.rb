class OrderController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    orderModel = Order.all.to_json(:include => [:account, :product])
    puts orderModel
    render :json => orderModel
  end

  def show 
    orderModel = Order.find(params[:id]).to_json(:include => [:account, :product])
    render :json => orderModel
  end

  def create
    orderModel = Order.new({
      :account_id=> params[:account_id],
      :product_id => params[:product_id]
    })
    orderModel.save.to_json(:include => [:account, :product])
    render :json => orderModel
  end

  def update
    orderModel = Order.find(params[:id])
    orderModel.update({
      :account_id => params[:account_id],
      :product_id => params[:product_id]
    }).to_json(:include => [:account, :product])
    render :json => orderModel
  end

  def destroy
    orderModel = Order.find(params[:id])
    orderModel.delete
    render :json => { :status => :success ,:message => "Successfully Deleted!!" }
  end
end
