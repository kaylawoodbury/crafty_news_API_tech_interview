class Api::CommentsController < ApplicationController
  def create 
    ping = Ping.create(ping_params)
    render json: { message: 'Your comment has been added'}
  end 
end
