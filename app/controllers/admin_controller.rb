class AdminController < ApplicationController
before_action :authorize_user, only: :index

  def index
    @users = User.all
    @posts = Post.all
    # We didn't do Comment.all - because it is included under Posts (we could)
    # If I want to do all comments - then do @comments = Comment.all
  end

  private

  def authorize_user
    if current_user.user_type != 'admin'
      redirect_to root_path, notice: 'Access DENIED BITCH!'
    end
  end


end
