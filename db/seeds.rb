@user1 = User.create(email: "myemail@email.com", password: "password", name: "Evan Joseph")
@user2 = User.create(email: "lorina@email.com", password: "bassnectar", name: "Lorin Anderson")

@animal1 = Animal.create(name: "Alice", birthdate: "06-02-1993", color: "black", weight: 6.72, species: "cat", image: "alice.png", user: @user1)

@animal1 = Animal.create(name: "Loki", birthdate: "10-28-2002", color: "black", weight: 56.2, species: "dog", image: "loki.png", user: @user2)

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



