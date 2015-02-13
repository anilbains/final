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
UserActivity.delete_all


# Create the UserProfiles
puts "Creating User Profile!!"

anil=UserProfile.create(firstname: "Anil", lastname: "Bains", dateofbirth: "10-01-1986", permanentlocation: "Evanston", company: "Kellogg School of Management")
ishita=UserProfile.create(firstname: "Ishita", lastname: "Choudhary", dateofbirth: "01-13-1987", permanentlocation: "New Delhi", company: "Govt. of India")
ash=UserProfile.create(firstname: "Ash", lastname: "Kenney", dateofbirth: "10-01-1987", permanentlocation: "Chicago", company: "Kellogg School of Management")
nayab=UserProfile.create(firstname: "Nayab", lastname: "Khan", dateofbirth: "10-01-1987", permanentlocation: "Jaipur", company: "Amazon")
steve=UserProfile.create(firstname: "Steve", lastname: "Duda", dateofbirth: "10-01-1987", permanentlocation: "Chicago", company: "Kellogg School of Management")


# Create User Groups

puts "Creating User Groups!!"

iit2008= UserGroup.create(nameofthegroup: "IIT Class of 2008", yearfounded: 2008, user_profile_id: anil.id)
mit2004= UserGroup.create(nameofthegroup: "MIT Class of 2004", yearfounded: 2004, user_profile_id: ash.id)
csk2010= UserGroup.create(nameofthegroup: "CSK Class of 2010", yearfounded: 2010, user_profile_id: ishita.id)
kellogg2015= UserGroup.create(nameofthegroup: "Kellogg Class of 2015", yearfounded: 2015, user_profile_id: anil.id)
unc2012= UserGroup.create(nameofthegroup: "UNC Class of 2012", yearfounded: 2012, user_profile_id: steve.id)

# Create User Activity
puts "Creating User Activity!!"
UserActivity.create(userprofileid: anil.id,  groupprofileid: iit2008.id, userlastactive: "1-1-2008 12:00:00 AM")
UserActivity.create(userprofileid: ash.id,  groupprofileid: mit2004.id, userlastactive: "1-1-2004 12:00:44 AM")
UserActivity.create(userprofileid: ishita.id,  groupprofileid: csk2010.id, userlastactive: "1-1-2010 12:10:50 PM")
UserActivity.create(userprofileid: ash.id,  groupprofileid: kellogg2015.id, userlastactive: "1-1-2015 01:10:00 PM")
UserActivity.create(userprofileid: ishita.id,  groupprofileid: unc2012.id, userlastactive: "1-1-2012 02:50:00 AM")