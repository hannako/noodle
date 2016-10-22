class ProfileController < ApplicationController

  def new
    @profile = Profile.new
  end

  def edit
    @profile = Profile.find(params[:id])
  end

  def update
    @profile = Profile.find(params[:id])
    @profile.assign_attributes(profile_params)
    @profile.save
    current_user.profile = @profile
    redirect_to profile_path
  end

  def create
    @profile = Profile.create(profile_params)
    current_user.profile = @profile
    redirect_to new_noodle_path
  end

  def show
    if user_signed_in? && current_user.profile
      @profile = current_user.profile
    elsif admin_signed_in? && current_admin.profile
      @profile = current_admin.profile
    else
      @profile = Profile.new
    end
  end

end

private

def profile_params
  params.require(:profile).permit(:address_line_one,
                                  :address_line_two,
                                  :address_line_three,
                                  :address_post_code,
                                  :birthday,
                                  :user_id
                                  )
end
