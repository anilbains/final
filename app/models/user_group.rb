class UserGroup < ActiveRecord::Base
  has_many :user_profiles, through: :group_members
  has_many :group_members

end
