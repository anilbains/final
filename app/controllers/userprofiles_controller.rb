class UserprofilesController < ApplicationController


def index
    @userprofiles= UserProfile.all
  end

  def show
    
    @userprofile= UserProfile.find_by(id: params[:id])
    #@useractivity= UserActivity.where(userprofile_id: @userprofiles.id)
  
  end 


  def new

  end

  def create

  end
	

end
