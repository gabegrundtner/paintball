User.delete_all
Tournament.delete_all
Participant.delete_all
Gear.delete_all
Result.delete_all

u1 = User.create!(email: "gbgrun10@smumn.edu", is_admin: true, name: "Gabe", password: "password", status: "Junior", password_confirmation: "password")
u2 = User.create!(email: "sam@example.com", is_admin: false, name: "Sam", password: "password", status: "Junior", password_confirmation: "password")
u3 = User.create!(email: "jim@example.com", is_admin: false, name: "Jim", password: "password", status: "Junior", password_confirmation: "password")
u4 = User.create!(email: "jeff@example.com", is_admin: false, name: "Jeff", password: "password", status: "Alumni", password_confirmation: "password")
u5 = User.create!(email: "tom@example.com", is_admin: false, name: "Tom", password: "password", status: "Alumni", password_confirmation: "password")
u6 = User.create!(email: "andrew@example.com", is_admin: false, name: "Andrew", password: "password", status: "Freshmen", password_confirmation: "password")
u7 = User.create!(email: "sally@example.com", is_admin: false, name: "Sally", password: "password", status: "Sophomore", password_confirmation: "password")
u8 = User.create!(email: "mike@example.com", is_admin: false, name: "Mike", password: "password", status: "Senior", password_confirmation: "password")

t1 = Tournament.create!(date: "2012/12/12", location: "River Falls, WI")
t2 = Tournament.create!(date: "2013/4/13", location: "Minnetonka, MN")
t3 = Tournament.create!(date: "2008/4/13", location: "Apple Valley, MN")

p1 = Participant.create!(tournament_id: t1.id, user_id: u1.id)
p2 = Participant.create!(tournament_id: t2.id, user_id: u1.id)
p3 = Participant.create!(tournament_id: t3.id, user_id: u1.id)
p4 = Participant.create!(tournament_id: t1.id, user_id: u2.id)
p5 = Participant.create!(tournament_id: t2.id, user_id: u2.id)
p6 = Participant.create!(tournament_id: t3.id, user_id: u2.id)
p7 = Participant.create!(tournament_id: t1.id, user_id: u3.id)
p8 = Participant.create!(tournament_id: t3.id, user_id: u3.id)
p9 = Participant.create!(tournament_id: t1.id, user_id: u4.id)
p10 = Participant.create!(tournament_id: t2.id, user_id: u4.id)
p11 = Participant.create!(tournament_id: t3.id, user_id: u4.id)
p12 = Participant.create!(tournament_id: t1.id, user_id: u5.id)
p13 = Participant.create!(tournament_id: t2.id, user_id: u5.id)
p14 = Participant.create!(tournament_id: t1.id, user_id: u6.id)
p15 = Participant.create!(tournament_id: t2.id, user_id: u6.id)
p16 = Participant.create!(tournament_id: t3.id, user_id: u6.id)
p17 = Participant.create!(tournament_id: t2.id, user_id: u7.id)
p18 = Participant.create!(tournament_id: t3.id, user_id: u7.id)
p19 = Participant.create!(tournament_id: t2.id, user_id: u8.id)
p20 = Participant.create!(tournament_id: t1.id, user_id: u8.id)

r1 = Result.create!(tournament_id: t1.id, place: "1st", team_name: "Saint Mary's")
r2 = Result.create!(tournament_id: t2.id, place: "1st", team_name: "Saint Mary's")
r3 = Result.create!(tournament_id: t3.id, place: "1st", team_name: "Saint Mary's")
r4 = Result.create!(tournament_id: t1.id, place: "2nd", team_name: "Saint John's")
r5 = Result.create!(tournament_id: t2.id, place: "2nd", team_name: "Saint John's")
r6 = Result.create!(tournament_id: t3.id, place: "2nd", team_name: "Saint John's")
r7 = Result.create!(tournament_id: t1.id, place: "3rd", team_name: "Olaf")
r8 = Result.create!(tournament_id: t2.id, place: "3rd", team_name: "Olaf")
r9 = Result.create!(tournament_id: t3.id, place: "3rd", team_name: "Olaf")
r10 = Result.create!(tournament_id: t1.id, place: "4th", team_name: "Viturbo")
r11 = Result.create!(tournament_id: t2.id, place: "4th", team_name: "Viturbo")
r12 = Result.create!(tournament_id: t3.id, place: "4th", team_name: "Viturbo")
r13 = Result.create!(tournament_id: t1.id, place: "5th", team_name: "Mankato")
r14 = Result.create!(tournament_id: t2.id, place: "5th", team_name: "Mankato")
r15 = Result.create!(tournament_id: t3.id, place: "5th", team_name: "Mankato")

g1 = Gear.create!(user_id: u1.id, cost: 65.00, name: "mask", description: "nice", for_sale: true)
g2 = Gear.create!(user_id: u1.id, cost: 20.00, name: "sandana", description: "nice", for_sale: true)
g3 = Gear.create!(user_id: u1.id, cost: 5.00, name: "bag", description: "nice", for_sale: true)
g4 = Gear.create!(user_id: u1.id, cost: 420.00, name: "marker", description: "nice", for_sale: true)
g5 = Gear.create!(user_id: u2.id, cost: 40.00, name: "sleeves", description: "nice", for_sale: true)
g6 = Gear.create!(user_id: u2.id, cost: 15.00, name: "mask", description: "bad", for_sale: false)
g7 = Gear.create!(user_id: u2.id, cost: 60.00, name: "pants", description: "nice", for_sale: true)
g8 = Gear.create!(user_id: u2.id, cost: 3.00, name: "barrel cover", description: "nice", for_sale: true)
g9 = Gear.create!(user_id: u2.id, cost: 77.00, name: "jersey", description: "nice", for_sale: true)
g10 = Gear.create!(user_id: u3.id, cost: 250.00, name: "marker", description: "nice", for_sale: true)
g11 = Gear.create!(user_id: u3.id, cost: 2.00, name: "bandana", description: "nice", for_sale: true)
g12 = Gear.create!(user_id: u3.id, cost: 63.00, name: "tank", description: "nice", for_sale: true)
g13 = Gear.create!(user_id: u4.id, cost: 0.00, name: "shoes", description: "poor", for_sale: false)
g14 = Gear.create!(user_id: u4.id, cost: 90.00, name: "chrono", description: "nice", for_sale: true)
g15 = Gear.create!(user_id: u4.id, cost: 88.00, name: "pants", description: "nice", for_sale: true)
g16 = Gear.create!(user_id: u4.id, cost: 7.00, name: "squeegee", description: "nice", for_sale: true)
g17 = Gear.create!(user_id: u5.id, cost: 700.00, name: "marker", description: "nice", for_sale: true)
g18 = Gear.create!(user_id: u5.id, cost: 43.00, name: "jersey", description: "nice", for_sale: true)
g19 = Gear.create!(user_id: u5.id, cost: 99.00, name: "mask", description: "nice", for_sale: true)
g20 = Gear.create!(user_id: u5.id, cost: 13.00, name: "shoes", description: "nice", for_sale: true)
g21 = Gear.create!(user_id: u5.id, cost: 900.00, name: "set up", description: "nice", for_sale: true)
g22 = Gear.create!(user_id: u6.id, cost: 84.00, name: "tank", description: "nice", for_sale: true)
g23 = Gear.create!(user_id: u6.id, cost: 27.00, name: "shield", description: "nice", for_sale: true)
g24 = Gear.create!(user_id: u6.id, cost: 0.00, name: "undershirt", description: "nice", for_sale: false)
g25 = Gear.create!(user_id: u7.id, cost: 55.00, name: "pants", description: "nice", for_sale: true)
g26 = Gear.create!(user_id: u7.id, cost: 400.00, name: "sword", description: "nice", for_sale: false)
g27 = Gear.create!(user_id: u7.id, cost: 72.00, name: "cleaning kit", description: "nice", for_sale: true)
g28 = Gear.create!(user_id: u7.id, cost: 4.00, name: "box", description: "nice", for_sale: true)
g29 = Gear.create!(user_id: u8.id, cost: 800.00, name: "marker", description: "nice", for_sale: true)
g30 = Gear.create!(user_id: u8.id, cost: 1.00, name: "socks", description: "stinky", for_sale: false)

ug1 = UsersGear.create!(user_id: u1.id, gear_id: g7.id)
ug2 = UsersGear.create!(user_id: u1.id, gear_id: g29.id)
ug3 = UsersGear.create!(user_id: u1.id, gear_id: g21.id)
ug4 = UsersGear.create!(user_id: u2.id, gear_id: g1.id)
ug5 = UsersGear.create!(user_id: u2.id, gear_id: g12.id)
ug6 = UsersGear.create!(user_id: u3.id, gear_id: g27.id)
ug7 = UsersGear.create!(user_id: u3.id, gear_id: g5.id)
ug8 = UsersGear.create!(user_id: u4.id, gear_id: g25.id)
ug9 = UsersGear.create!(user_id: u4.id, gear_id: g17.id)
ug10 = UsersGear.create!(user_id: u4.id, gear_id: g1.id)
ug11 = UsersGear.create!(user_id: u5.id, gear_id: g8.id)
ug12 = UsersGear.create!(user_id: u6.id, gear_id: g23.id)
ug13 = UsersGear.create!(user_id: u6.id, gear_id: g2.id)
ug14 = UsersGear.create!(user_id: u7.id, gear_id: g15.id)
ug15 = UsersGear.create!(user_id: u7.id, gear_id: g9.id)
ug16 = UsersGear.create!(user_id: u8.id, gear_id: g3.id)
ug17 = UsersGear.create!(user_id: u8.id, gear_id: g20.id)
ug18 = UsersGear.create!(user_id: u8.id, gear_id: g25.id)
ug19 = UsersGear.create!(user_id: u8.id, gear_id: g4.id)



















































