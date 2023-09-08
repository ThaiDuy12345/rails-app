class AuthenticationController < ApplicationController
  skip_before_action :verify_authenticity_token
  def sign_in
    accountModel = Account.find_by({
      :email => params[:email],
      :password => params[:password]
    })

    if accountModel
      render :json => {
        :status => 200, 
        message: "Successfully signed in!!",
        data: accountModel
      }
    else
      render :json => {
        :status => 404, 
        message: "Wrong Email address or Password!! Please try again!!"
      }
    end
  end
end
