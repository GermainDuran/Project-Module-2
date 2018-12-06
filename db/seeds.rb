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


Designer.create(name: "Tommy Hilfiger", style: "Animal print", img_url: "https://www.lovehappensmag.com/blog/wp-content/uploads/2013/09/tommy2.jpg")
Designer.create(name: "Roberto Cavalli", style: "Classic", img_url: "https://www.lovehappensmag.com/blog/wp-content/uploads/2013/09/roberto-cavalli1.jpg")
Designer.create(name: "Tom Ford", style: "Modern", img_url: "https://www.lovehappensmag.com/blog/wp-content/uploads/2012/07/imagemtom_1.jpg")
Designer.create(name: "Christian Dior", style: "Modern and Classic", img_url: "https://www.lovehappensmag.com/blog/wp-content/uploads/2013/09/Christian-Dior-Fashion-Designer.jpg")
Designer.create(name: "Coco Chanel", style: "Boutique", img_url: "https://www.lovehappensmag.com/blog/wp-content/uploads/2013/02/1936-Photo-Lipnitzki_v_28jan13_b_426x639.jpg")
Designer.create(name: "Donna Karan", style: "Modern", img_url: "https://www.lovehappensmag.com/blog/wp-content/uploads/2013/09/Donna-Karan.jpg")
Designer.create(name: "Giorgio Armani ", style: "Classic and modern", img_url: "https://www.lovehappensmag.com/blog/wp-content/uploads/2013/09/Sem-T%C3%ADtulo-11.jpg")
Designer.create(name: "Calvin Klein", style: "Classic modernity", img_url: "https://www.lovehappensmag.com/blog/wp-content/uploads/2013/09/CALVI.jpg")
Designer.create(name: "Donatella Versace" , style: "Boutique ", img_url: "https://www.lovehappensmag.com/blog/wp-content/uploads/2013/09/Donatella-Versace.jpg")
Designer.create(name: "Ralph Lauren" , style: "Classic", img_url: "https://www.lovehappensmag.com/blog/wp-content/uploads/2013/09/Ralph-Lauren.jpg")



Event.create(title:"Versace fan boy",description:"Come to see our amazing collection and enjoy the biggest discount in the season",location:"Broadway st, NYC",time: "10:00 PM", designer: Designer.first, img_url: "https://pmcwwd.files.wordpress.com/2017/09/versace-rtw-spring-2018-milan-fashion-week-mfw-002.jpg?w=683")
Event.create(title:"Fashion week",description:"The best week of the fashion world is right here, join us to have a glam night",location:"Miami",time: "8:00 PM", designer: Designer.second, img_url: "https://www.duanestreethotel.com/wp-content/uploads/2014/08/Runway.jpg" )
Event.create(title:"Fall fashion debut",description:"Are you ready for fall? come to join us and enjoy of our specials discount",location:"Italy",time: "5:00 PM", designer: Designer.third, img_url: "https://si.wsj.net/public/resources/images/BN-XU052_ONESHE_16H_20180308123844.jpg" )
Event.create(title:"Winter week",description:"Are you cold on wintertime? don't miss the newest jackets collection",location:"Caracas",time: "9:30 PM", designer: Designer.fourth, img_url: "http://www.vfashionworld.com/wp-content/uploads/2017/03/top-trends-milano-fashion-week-fall-winter-2017-2018-featred-image-vfw-magazine.jpg" )
Event.create(title:"Christmas debut",description:"Christmas is the favorite holiday, so you gotta be ready for it, come to our event and enjoy the discounts",location:"Valencia",time: "8:00 PM", designer: Designer.fifth, img_url: "https://secure.cdn1.wdpromedia.com/resize/mwImage/1/630/354/75/dam/wdpro-assets/dlr/parks-and-tickets/entertainment/disneyland/christmas-fantasy-parade/disneyland-entertainment-christmas-fantasy-parade-00-16x9.jpg?1541698726752" )
Event.create(title:"Summer sales",description:"Be ready for summer, come and enjoy the our discounts",location:"Tokio",time: "6:00 PM", designer: Designer.first, img_url: "http://www.genovatoday.it/~media/horizontal-hi/68644378894595/saldi-estivi-2.jpg")






















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


#Comment.create(content:"excelent", user: User.first, event: Event.first)
