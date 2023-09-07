class AccountController < ApplicationController
  skip_before_action :verify_authenticity_token
  def index
    accountModel = Account.all
    render json: accountModel
  end
end
