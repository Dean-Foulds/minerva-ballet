class ProfilesController < ApplicationController

    def show
      respond_to do |format|
      format.html { render "show" }
      end  
    end
  
    def edit
      respond_to do |format|
      format.html { render "edit" }
      end  
    end
  
    def update
      if current_user.update(profile_params)
        redirect_to profile_path
      else
        render :edit
      end
    end
  
    private
  
    def profile_params
      params.require(:user).permit(:username, :email, :first_name, :last_name, :date_of_birth, :telephone, :next_of_kin, :previous_injuries, :about_me, :photo)
    end
end  