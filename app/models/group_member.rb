class GroupMember < ActiveRecord::Base
  belongs_to :user_group
  belongs_to :user_profile

end
