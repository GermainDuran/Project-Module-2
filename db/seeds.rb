# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Designer.destroy_all
Event.destroy_all
UserEvent.destroy_all
UserFavorite.destroy_all

User.create(name: "Jose Torres",email: "torres@gmail.com")
User.create(name: "Maria Bentancour",email: "maria@hotmail.com")
User.create(name: "Demain Sims",email: "sims@gmail.com")
User.create(name: "Arturo Duran",email: "duran@gmail.com")
User.create(name: "Carlos Smith",email: "carlossmith@gmail.com")


Designer.create(name: "Versace", style: "Animal print")
Designer.create(name: "Giovanni Sccutaro", style: "Classic")
Designer.create(name: "Mark Jacobs", style: "Modern")
Designer.create(name: "Stella Mccartney", style: "Modern and Classic")
Designer.create(name: "Coco Chanel", style: "Boutique")

Event.create(title:"Versace fan boy",description:"LATER",location:"Broadway st, NYC",time: "10:00 PM", designer: Designer.first)
Event.create(title:"Fashion week",description:"LATER",location:"Miami",time: "8:00 PM", designer: Designer.second)
Event.create(title:"Fall fashion debut",description:"LATER",location:"Italy",time: "5:00 PM", designer: Designer.third)
Event.create(title:"Winter week",description:"LATER",location:"Caracas",time: "9:30 PM", designer: Designer.fourth)
Event.create(title:"Christmas debut",description:"LATER",location:"Valencia",time: "8:00 PM", designer: Designer.fifth)
Event.create(title:"Summer sales",description:"LATER",location:"Tokio",time: "6:00 PM", designer: Designer.first)


UserEvent.create(user: User.first,event: Event.first)
UserEvent.create(user: User.first,event: Event.second)
UserEvent.create(user: User.third,event: Event.third)
UserEvent.create(user: User.first,event: Event.third)
UserEvent.create(user: User.fourth,event: Event.fourth)
UserEvent.create(user: User.fifth,event: Event.fifth)

UserFavorite.create(user: User.first ,designer: Designer.first)
UserFavorite.create(user: User.second ,designer: Designer.second)
UserFavorite.create(user: User.third ,designer: Designer.third)
UserFavorite.create(user: User.fourth ,designer: Designer.fourth)
UserFavorite.create(user: User.first ,designer: Designer.second)


Comment.create(content:"excelent", user: User.first, event: Event.first)
