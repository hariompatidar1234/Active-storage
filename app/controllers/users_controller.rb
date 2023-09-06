class UsersController < ApplicationController
  skip_before_action :verify_authenticity_token
   def create
    user = User.create!(user_params)
    render json: user
  end

   def show
    user=User.last
    render json: cdn_image_url(user.avatar)
   end

  private
    def user_params
      params.permit(:avatar)
    end
end
