class MessagesController < ApplicationController
  skip_before_action :verify_authenticity_token
    def create
    message = Message.create!(message_params)
     render json: message
  end

   def show
    message=Message.last
    render json: url_for(message.images)
   end
   def index
    message=Message.all
    render json: url_for(message_params)
   end

  private
    def message_params
      params.permit(images: [])
    end
end
