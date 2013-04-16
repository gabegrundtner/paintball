User.delete_all
Tournament.delete_all
Participant.delete_all
Gear.delete_all
Result.delete_all

u1 = User.create!(email: "gbgrun10@smumn.edu", is_admin: true, name: "Gabe", password: "password", status: "junior")
u2 = User.create!(email: "saric10@smumn.edu", is_admin: true, name: "Sam", password: "password", status: "junior")
u3 = User.create!(email: "jfbean10@smumn.edu", is_admin: true, name: "Jim", password: "password", status: "junior")

t1 = Tournament.create!(date: "12/12/12", location: "River Falls, WI")
t2 = Tournament.create!(date: "4/13/13", location: "Minnetonka, MN")
t3 = Tournament.create!(date: "9/4/13", location: "Apple Valley, MN")

p1 = Participant.create!(tournament_id: t1, user_id: u1)
p2 = Participant.create!(tournament_id: t2, user_id: u1)
p3 = Participant.create!(tournament_id: t3, user_id: u1)

r1 = Result.create!(tournament_id: t1, place: "1st", team_name: "Saint Mary's")
r2 = Result.create!(tournament_id: t2, place: "1st", team_name: "Saint Mary's")
r3 = Result.create!(tournament_id: t3, place: "1st", team_name: "Saint Mary's")