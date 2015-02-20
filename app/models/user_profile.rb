class UserProfile < ActiveRecord::Base
  has_many :user_groups, through: :group_members
  has_many :group_members, dependent: :destroy
end
