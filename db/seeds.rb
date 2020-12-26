@user1 = User.create(email: "myemail@email.com", password: "password", name: "Evan Joseph")
@user2 = User.create(email: "lorina@email.com", password: "bassnectar", name: "Lorin Anderson")
@user3 = User.create(email: "admin@email.com", password: "admin", name: "Admin", admin: true)
@user4 = User.create(email: "animallover@gmail.com", password: "iluvanimals", name: "Britney Spears")

@animal1 = Animal.create(name: "Rocky", birthdate: "2020-10-02", sex: "Male", color: "Black", weight: 20, species: "Dog", user: @user1)
@animal2 = Animal.create(name: "Opal", birthdate: "2004-06-14", sex: "Female", color: "Black", weight: 10, species: "Cat", user: @user1)
@animal3 = Animal.create(name: "Sandy", birthdate: "2010-11-28", sex: "Female", color: "White", weight: 15, species: "Dog", user: @user3)
@animal4 = Animal.create(name: "Lainey", birthdate: "2019-03-15", sex: "Female", color: "Light Brown", weight: 30, species: "Dog", user: @user4)
@animal5 = Animal.create(name: "Annabelle", birthdate: "2017-04-01", sex: "Female", color: "Brown", weight: 55, species: "Dog", user: @user4)
@animal6 = Animal.create(name: "Scruffy", birthdate: "2007-12-25", sex: "Male", color: "White and Gray", weight: 42, species: "Dog", user: @user2)
@animal7 = Animal.create(name: "Bubbles", birthdate: "2020-05-15", sex: "Male", color: "Orange", weight: 1, species: "Fish", user: @user2)
@animal8 = Animal.create(name: "Meow Boi", birthdate: "2018-10-16", sex: "Male", color: "Gray", weight: 7, species: "Cat", user: @user3)

@service1 = Service.create(name: "Dentistry")
@service2 = Service.create(name: "Diet and Nutrition")
@service3 = Service.create(name: "Parasite Control")
@service4 = Service.create(name: "Routine Checkup")
@service5 = Service.create(name: "Vaccinations")
@service6 = Service.create(name: "Microchipping")
@service7 = Service.create(name: "Spay or Neuter")
@service8 = Service.create(name: "Laser Therapy")
@service9 = Service.create(name: "Cremation")
@service10 = Service.create(name: "Euthanasia")

@veterinarian1 = Veterinarian.create(name: "Dr. Radcliffe")
@veterinarian2 = Veterinarian.create(name: "Dr. Hungerford")
@veterinarian3 = Veterinarian.create(name: "Dr. Johnson")
@veterinarian4 = Veterinarian.create(name: "Dr. Whaley")
@veterinarian5 = Veterinarian.create(name: "Dr. Doolittle")
@veterinarian6 = Veterinarian.create(name: "Dr. Foster")
@veterinarian7 = Veterinarian.create(name: "Dr. Smith")
@veterinarian8 = Veterinarian.create(name: "Dr. Peters")
@veterinarian9 = Veterinarian.create(name: "Dr. Gray")
@veterinarian10 = Veterinarian.create(name: "Dr. Scales")

@appointment1 = Appointment.create(date: "2021-06-20T11:30", user: @user1, animal: @animal1, veterinarian: @veterinarian4, service: @service10)
@appointment2 = Appointment.create(date: "2021-12-09T14:15", user: @user2, animal: @animal6, veterinarian: @veterinarian7, service: @service2)
@appointment3 = Appointment.create(date: "2021-02-20T15:10", user: @user1, animal: @animal2, veterinarian: @veterinarian9, service: @service1)
@appointment4 = Appointment.create(date: "2021-09-11T10:25", user: @user2, animal: @animal7, veterinarian: @veterinarian8, service: @service3)
@appointment5 = Appointment.create(date: "2021-07-04T09:35", user: @user3, animal: @animal3, veterinarian: @veterinarian4, service: @service9)
@appointment6 = Appointment.create(date: "2021-10-28T10:00", user: @user4, animal: @animal5, veterinarian: @veterinarian1, service: @service7)
@appointment7 = Appointment.create(date: "2021-05-01T16:00", user: @user4, animal: @animal4, veterinarian: @veterinarian2, service: @service2)
@appointment8 = Appointment.create(date: "2021-02-19T15:30", user: @user3, animal: @animal3, veterinarian: @veterinarian3, service: @service1)
@appointment9 = Appointment.create(date: "2021-08-07T15:00", user: @user2, animal: @animal6, veterinarian: @veterinarian6, service: @service4)
@appointment10 = Appointment.create(date: "2021-03-12T08:45", user: @user1, animal: @animal1, veterinarian: @veterinarian5, service: @service4)