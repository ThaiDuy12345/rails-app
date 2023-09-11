class AccountController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    accountModel = Account.all
    render :json => accountModel
  end

  def show 
    accountModel = Account.find(params[:id])
    render :json => accountModel
  end

  def create
    accountModel = Account.new({
      :name => params[:name],
      :age => params[:age],
      :address => params[:address],
      :email => params[:email],
      :password => params[:password]
    })
    accountModel.save
    render :json => accountModel
  end

  def update
    accountModel = Account.find(params[:id])
    accountModel.update({
      :name => params[:name],
      :age => params[:age],
      :address => params[:address],
      :email => params[:email],
      :password => params[:password]
    })
    render :json => accountModel
  end

  def destroy
    accountModel = Account.find(params[:id])
    accountModel.delete
    render :json => { :status => :success ,:message => "!" }
  end
end
