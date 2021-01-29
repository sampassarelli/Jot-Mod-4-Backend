class Api::V1::UsersController < ApplicationController
  def create
    user = User.new(user_params)
    
    if user.save
      render json: user
    else 
      render json: {"User not created, please try again!"}
    end
  end

  private

    def user_params
        params.require(:user).permit(:username, :password)
    end
end
