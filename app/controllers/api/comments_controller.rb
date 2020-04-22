class Api::CommentsController < ApplicationController
  def create 
    comment = Comment.create()
    render json: { message: 'Your comment has been added'}
  end 
end
