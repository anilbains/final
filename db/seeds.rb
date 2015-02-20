# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


puts "Deleting all records from the database..."
UserProfile.delete_all
UserGroup.delete_all
GroupMember.delete_all
Location.delete_all


puts "Creating Location"
chicago=Location.create(name: "Chicago")
newdelhi=Location.create(name: "New Delhi")
evanston=Location.create(name: "Evanston")
jaipur=Location.create(name: "Jaipur")


# Create the UserProfiles
puts "Creating User Profile!!"

anil=UserProfile.create(firstname: "Anil", lastname: "Bains", dateofbirth: "10-01-1986", location_id: chicago.id, company: "Kellogg School of Management")
ishita=UserProfile.create(firstname: "Ishita", lastname: "Choudhary", dateofbirth: "01-13-1987", location_id: newdelhi.id, company: "Govt. of India")
ash=UserProfile.create(firstname: "Ash", lastname: "Kenney", dateofbirth: "10-01-1987", location_id: evanston.id, company: "Kellogg School of Management")
nayab=UserProfile.create(firstname: "Nayab", lastname: "Khan", dateofbirth: "10-01-1987", location_id: jaipur.id, company: "Amazon")
steve=UserProfile.create(firstname: "Steve", lastname: "Duda", dateofbirth: "10-01-1987", location_id: chicago.id, company: "Kellogg School of Management")


# Create User Groups

puts "Creating User Groups!!"

iit2008= UserGroup.create(nameofthegroup: "IIT Class of 2008", yearfounded: 2008)
mit2004= UserGroup.create(nameofthegroup: "MIT Class of 2004", yearfounded: 2004)
csk2010= UserGroup.create(nameofthegroup: "CSK Class of 2010", yearfounded: 2010)
kellogg2015= UserGroup.create(nameofthegroup: "Kellogg Class of 2015", yearfounded: 2015)
unc2012= UserGroup.create(nameofthegroup: "UNC Class of 2012", yearfounded: 2012)

# Create User Activity
puts "Creating Group Members!!"
GroupMember.create(user_profile_id: anil.id,  user_group_id: iit2008.id)
GroupMember.create(user_profile_id: nayab.id,  user_group_id: iit2008.id)
GroupMember.create(user_profile_id: ash.id,  user_group_id: mit2004.id)
GroupMember.create(user_profile_id: ishita.id,  user_group_id: csk2010.id)
GroupMember.create(user_profile_id: anil.id,  user_group_id: kellogg2015.id)
GroupMember.create(user_profile_id: nayab.id,  user_group_id: kellogg2015.id)
GroupMember.create(user_profile_id: ishita.id,  user_group_id: unc2012.id)
GroupMember.create(user_profile_id: steve.id,  user_group_id: unc2012.id)




