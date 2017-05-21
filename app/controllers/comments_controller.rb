class CommentsController < ApplicationController
  def show
    @comment = Comment.find_by(id: params['id'])
  end

  def index
    @all_comments = Comment.all
  end

  def new
    
  end

  def edit
  end
end
