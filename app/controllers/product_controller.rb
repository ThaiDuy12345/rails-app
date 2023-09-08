class ProductController < ApplicationController
  skip_before_action :verify_authenticity_token

  def get_all
    productModel = Product.all
    render :json => productModel
  end

  def get_by_id 
    productModel = Product.find(params[:id])
    render :json => productModel
  end

  def create
    productModel = Product.new({
      :name => params[:name],
      :price => params[:price],
      :quantity => params[:quantity],
      :description => params[:description],
    })
    productModel.save
    render :json => productModel
  end

  def update
    productModel = Product.find(params[:id])
    productModel.update({
      :name => params[:name],
      :price => params[:price],
      :quantity => params[:quantity],
      :description => params[:description],
    })
    render :json => productModel
  end

  def delete
    productModel = Product.find(params[:id])
    productModel.delete
    render :json => { :status => :success ,:message => "!" }
  end
end
