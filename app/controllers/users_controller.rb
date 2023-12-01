class UsersController < ApplicationController

  def index
    @user_list = User.all.order({:username => :asc})
    render({:template => "user_templates/index"})
  end

  def details
    username = params.fetch("username")
    @user = User.where({:username => username}).at(0)
    render(:template => "user_templates/details")
  end

  def create
    new_user = User.new
    new_user.username = params.fetch("input_username")
    new_user.save

    redirect_to("/users")
  end

end
