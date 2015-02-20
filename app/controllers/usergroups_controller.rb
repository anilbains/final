class UsergroupsController < ApplicationController


  def index
    @usergroups= UserGroup.all
  end

  def show    
    @usergroup= UserGroup.find_by(id: params[:id])
    
  end 

 
end
