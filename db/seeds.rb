# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Doctor.destroy_all
Patient.destroy_all
Appointment.destroy_all


doc1 = Doctor.create(first_name: "Ayush", last_name: "Gehlot", specialty: "Neurology", mobile: "07908254418", email:"ash@gmail.com", address:"1 Kitwood Drive, Lower Earley, Reading", password: "ash", location:"UK", description: "Dr of Tech", gender:"Male", department: "Neurological", DOB: "20/12/1994", profile_pic: "https://media.licdn.com/dms/image/C5603AQEZWtDVVoEnKA/profile-displayphoto-shrink_200_200/0?e=1567036800&v=beta&t=0xhG6JfDWDAPG96251RBcByCbpsISiR7UcCoLp2cyfg")
doc2 = Doctor.create(first_name: "Jim", last_name: "Carrey", specialty: "Cardiology", mobile: "07908254497", email:"jim@gmail.com", address:"100 Tellow Drive, Lower Earley, London", password: "jim", location:"USA", description: "Dr of Comedy", gender:"Female", department: "Cardiological", DOB: "20/12/1980", profile_pic: "https://m.media-amazon.com/images/M/MV5BMTQwMjAwNzI0M15BMl5BanBnXkFtZTcwOTY1MTMyOQ@@._V1_.jpg")
doc3 = Doctor.create(first_name: "Kevin", last_name: "Lopez", specialty: "Physiology", mobile: "07908254497", email:"kevin@gmail.com", address:"101 Tellow Drive, Lower Earley, London", password: "kevin", location:"UK", description: "Dr of Drinks", gender:"Male", department: "Physiological", DOB: "20/12/1992", profile_pic: "https://www.ocregister.com/wp-content/uploads/migration/kpk/kpkrcv-20iwnticketscam1large.jpg?w=535")
doc4 = Doctor.create(first_name: "Xabi", last_name: "Casán", specialty: "Anatomy", mobile: "079082544971", email:"xabi@gmail.com", address:"102 Tellow Drive, Lower Earley, London", password: "xabi", location:"Spain", description: "Dr of GoodTimes", gender:"Male", department: "Anatomical", DOB: "20/12/1990", profile_pic: "https://files.slack.com/files-pri/T02MD9XTF-FLA6SB7L6/xabi.jpg")



p1 = Patient.create(first_name: "Iron", last_name:"Man", chronic_conditions: "Arthiritis", DOB:"20/10/1980", gender: "Female", age: 20, mobile: "07908254417", email: "pat1@gmail.com", address: "13 Wallaby Street", city: "Reading", province: "Berkshire", postcode: "RG6 3TA", marital_status: "Single", profile_pic: "https://static.gamespot.com/uploads/screen_kubrick/1587/15875866/3514706-ironmanvr-promo-nologo.jpg", blood_group: "A", blood_pressure: "140/120", initial_note: "He dead now.", ethnicity: "British Asian" )
p2 = Patient.create(first_name: "Spider", last_name:"Man", chronic_conditions: "T2 Diabetes", DOB:"20/10/1982", gender: "Male", age: 50, mobile: "07908254414", email: "pat2@gmail.com", address: "21 St.Mary Road", city: "Surrey", province: "Guilford", postcode: "CR3 0AA", marital_status: "Married", profile_pic: "https://cdn1us.denofgeek.com/sites/denofgeekus/files/styles/main_wide/public/2019/03/spider-man-far-from-home-tom-holland.jpg?itok=Nc6i_hlB", blood_group: "O", blood_pressure: "120/120", initial_note: "Wannabe Ironman lol.", ethnicity: "Spider" )
p3 = Patient.create(first_name: "Thor", last_name:"OdinSon", chronic_conditions: "Cardiac Disease", DOB:"20/10/1982", gender: "Male", age: 30, mobile: "079082544145", email: "thor@gmail.com", address: "21 St.Mary Road", city: "Surrey", province: "Guilford", postcode: "CR3 0AA", marital_status: "Married", profile_pic: "https://cdn.images.express.co.uk/img/dynamic/36/590x/secondary/Avengers-Endgame-Chris-Hemsworth-talks-about-the-future-of-Thor-1893473.jpg?r=1559243428801", blood_group: "AB", blood_pressure: "420/420", initial_note: "Wannabe Odin", ethnicity: "God" )
p4 = Patient.create(first_name: "Ant", last_name:"Man", chronic_conditions: "Miniaturisation", DOB:"20/10/1982", gender: "Male", age: 30, mobile: "079082544144", email: "ant@gmail.com", address: "21 St.Mary Road", city: "Surrey", province: "Guilford", postcode: "CR3 0AA", marital_status: "Married", profile_pic: "https://images-na.ssl-images-amazon.com/images/I/71P5DgHCGvL._SY606_.jpg", blood_group: "A", blood_pressure: "100/120", initial_note: "Can't find him", ethnicity: "Ant" )




a1 = Appointment.create(status: "Pending", doctor: doc1, patient: p2, date: "25/07/2019", from_time: "14:12", to_time: "14:30", condition: "Fever", note: "High temperature, some abdominal pain")
a2 = Appointment.create(status: "Pending", doctor: doc2, patient: p1, date: "20/07/2019", from_time: "15:15", to_time: "16:30", condition: "Headache", note: "Morning migraines persistently")
a3 = Appointment.create(status: "Pending", doctor: doc1, patient: p1, date: "21/07/2019", from_time: "13:12", to_time: "14:30", condition: "Cough", note: "High temperature, some abdominal pain")
a4 = Appointment.create(status: "Pending", doctor: doc3, patient: p4, date: "29/07/2019", from_time: "15:12", to_time: "15:30", condition: "Puberty", note: "Complaining about growth pain")
a5 = Appointment.create(status: "Pending", doctor: doc4, patient: p3, date: "21/07/2019", from_time: "16:12", to_time: "16:30", condition: "Heartache", note: "Lost his Hammer, now overweight and depressed")

