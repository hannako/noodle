class NoodleController < ApplicationController


  def index

  end

  def new
    if admin_signed_in?
      @users =  User.find_by(:invited_by_id=>current_admin.id)
      @users.compact
    else
      @users = User.all
      @users.compact
    end
  end



end
