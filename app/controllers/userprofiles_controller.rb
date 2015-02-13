class UserprofilesController < ApplicationController


  def index
    @userprofiles= UserProfile.all
  end

  def show    
    @userprofile= UserProfile.find_by(id: params[:id])
    #@useractivity= UserActivity.where(userprofile_id: @userprofiles.id)
  end 

  def new
    @userprofile=UserProfile.new

  end

  def create
    userprofile_params = params.require( :user_profile).permit( :firstname, :lastname, :dateofbirth, :permanentlocation, :company)
    UserProfile.create(userprofile_params)
    redirect_to userprofiles_path
  end

  def edit
    @userprofile= UserProfile.find_by(id: params['id'])
  end

  def update
    userprofile_params = params.require( :user_profile).permit( :firstname, :lastname, :dateofbirth, :permanentlocation, :company)
    @userprofile= UserProfile.find_by(id: params["id"])
    @userprofile.update(userprofile_params)
    redirect_to userprofiles_path
	end

  def destroy
    @userprofile= UserProfile.find_by(id: params["id"])
    @userprofile.delete
    redirect_to userprofiles_path
  end

end
