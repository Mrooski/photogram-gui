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

    if new_user.username.empty?
      redirect_to("/users")
    else
      redirect_to("/users/"+new_user.username)
    end
  end

  def update
    new_username = params.fetch("input_browser_username")
    user_id_to_update = params.fetch("id")
    user_to_update = User.where({:id => user_id_to_update}).at(0)
    user_to_update.username = new_username
    if user_to_update.save == true
      redirect_to("/users/" + user_to_update.username)
    else
      redirect_to("/users/" + User.where({:id => user_id_to_update}).at(0).username)
    end
  end

end
