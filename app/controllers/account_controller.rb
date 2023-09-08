class AccountController < ApplicationController
  skip_before_action :verify_authenticity_token

  def get_all
    accountModel = Account.all
    render :json => accountModel
  end

  def get_by_id 
    accountModel = Account.find(params[:id])
    render :json => accountModel
  end

  def create
    accountModel = Account.new(params)
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

  def delete
    accountModel = Account.find(params[:id])
    accountModel.delete
    render :json => { :status => :success ,:message => "!" }
  end
end
