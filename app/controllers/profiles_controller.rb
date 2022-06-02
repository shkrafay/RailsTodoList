class ProfilesController < ApplicationController

  def index
    @profiles = Profile.all.order("created_at ASC")
  end

  def new
    @profile = Profile.new
  end

  def create
   @profile = Profile.new(profile_params)
   if @profile.save
    redirect_to @profile
  else
    render :new
  end
end

def show
 @profile = Profile.find(params[:id])
end

def destroy
 @profile = Profile.find(params[:id])
 @profile.destroy

 redirect_to profiles_path
end

private
def profile_params
  params.require(:profile).permit(:email, :name, :address, :city, :state, :agreed, :zip)
end
end