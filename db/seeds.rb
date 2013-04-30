User.delete_all
Tournament.delete_all
Participant.delete_all
Gear.delete_all
Result.delete_all

u1 = User.create!(email: "gbgrun10@smumn.edu", is_admin: true, name: "Gabe", password: "password", status: "junior", password_confirmation: "password")
u2 = User.create!(email: "saric10@smumn.edu", is_admin: false, name: "Sam", password: "password", status: "junior", password_confirmation: "password")
u3 = User.create!(email: "jfbean10@smumn.edu", is_admin: false, name: "Jim", password: "password", status: "junior", password_confirmation: "password")

t1 = Tournament.create!(date: "2012/12/12", location: "River Falls, WI")
t2 = Tournament.create!(date: "2013/4/13", location: "Minnetonka, MN")
t3 = Tournament.create!(date: "2008/4/13", location: "Apple Valley, MN")

p1 = Participant.create!(tournament_id: t1.id, user_id: u1.id)
p2 = Participant.create!(tournament_id: t2.id, user_id: u1.id)
p3 = Participant.create!(tournament_id: t3.id, user_id: u1.id)

r1 = Result.create!(tournament_id: t1.id, place: "1st", team_name: "Saint Mary's")
r2 = Result.create!(tournament_id: t2.id, place: "1st", team_name: "Saint Mary's")
r3 = Result.create!(tournament_id: t3.id, place: "1st", team_name: "Saint Mary's")