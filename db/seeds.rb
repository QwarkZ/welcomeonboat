
require "open-uri"

puts "Cleaning Database"
Booking.destroy_all
puts "Booking destroyed"
Boat.destroy_all
puts "Boat destroyed"
User.destroy_all
puts "User destroyed"

puts "Adding Users"
file = File.open(Rails.root.join("db", "seeds", "images", "Guillaume.jpg"))
user_1 = User.create({first_name: "Guillaume", last_name: "FERCHAUD", email: "guillaume@example.com", password: "azerty"})
user_1.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

file = File.open(Rails.root.join("db", "seeds", "images", "Marion.jpg"))
user_2 = User.create({first_name: "Marion", last_name: "PETITPREZ", email: "marion@example.com", password: "azerty"})
user_2.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

file = File.open(Rails.root.join("db", "seeds", "images", "Lucrece.jpg"))
user_3 = User.create({first_name: "Lucrèce", last_name: "GUGELOT", email: "lucrece@example.com", password: "azerty"})
user_3.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

file = File.open(Rails.root.join("db", "seeds", "images", "Antoine.jpg"))
user_4 = User.create({first_name: "Antoine", last_name: "GALPY", email: "antoine@example.com", password: "azerty"})
user_4.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')


file = File.open(Rails.root.join("db", "seeds", "images", "Angele.jpg"))
user_5 = User.create({first_name: "Angèle", last_name: "Haon", email: "angele@example.com", password: "azerty"})
user_5.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')


file = File.open(Rails.root.join("db", "seeds", "images", "Jean.jpg"))
user_6 = User.create({first_name: "Jean", last_name: "Petit", email: "jean@example.com", password: "azerty"})
user_6.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')


file = File.open(Rails.root.join("db", "seeds", "images", "Omar.jpg"))
user_7 = User.create({first_name: "Omar", last_name: "Sy", email: "omar@example.com", password: "azerty"})
user_7.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
puts "End of Adding Users"

file = File.open(Rails.root.join("db", "seeds", "images", "François.jpeg"))
user_8 = User.create({first_name: "François", last_name: "Retif", email: "francois@example.com", password: "azerty"})
user_8.photo.attach(io: file, filename: 'nes.jpeg', content_type: 'image/jpeg')
puts "End of Adding Users"

puts "Adding Boats with photos"
file = File.open(Rails.root.join("db", "seeds", "images", "voilier1.jpg"))
boat_1 = Boat.create(
	title: "JEANNEAU — SUN ODYSSEY 40.3 (2006)",
	description: "8 personnes · 3 cabines · 8 couchages.
Il s'agit d'un bateau très confortable: trois cabines doubles, deux salles d'eau avec douche et wc, chauffe-eau électrique et fonctionnant avec le refroidissement du moteur. Rserves d'eau douce: 300 litres. Réserve de gazoil: 140 litres. Les voiles sont en bon état:
La grand-voile est de 2014. Le genois sur enrouleur de 2013. Le spi, triradial est dans un état neuf.",
	category: "Voilier",
	price_per_day: "150",
	address: "Kernével",
	owner: user_8
	)
boat_1.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

file = File.open(Rails.root.join("db", "seeds", "images", "voilier2.jpg"))
boat_2 = Boat.create(
	title: "KIRIE - FEELING — FEELING 32 (2003)", 
	description: "8 personnes · 2 cabines · 3 couchages. Feeling 32 année 2003, c'est un quillard avec un tirant d'eau 1.65m, bi safran, électronique dernière génération simrad, GV X voiles, génois sur enrouleur neuf pour printemps 2017 de chez, habitable bien équipé et confortable. C'est le voilier idéal pour la navigation et la croisière en Finistère Sud, vers les Glénan, le Morbihan et ses îles (Groix, Belle-Île, Houat et Hoedic..)frigo neuf (juin 2018).", 
	category: "Voilier", 
	price_per_day: "220", 
	address: "Loctudy", 
	owner: user_3
	)
boat_2.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

file = File.open(Rails.root.join("db", "seeds", "images", "voilier3.png"))
boat_3 = Boat.create(
	title: "JEANNEAU — SUN ODYSSÉE 349 (2014)", 
	description: "8 personnes · 2 cabines · 6 couchages. Mis à l'eau en mai 2014, Le Sun Odyssée 349 est prévu pour la navigation hauturière. Il s'agit d'un bateau de marque Jeanneau très bien conçu, rapide et agréable à barrer avec ses deux barres à roues. il est équipé d'un GPS-traceur avec les cartes navionics méditerranée, d'un pilote automatique, de 2 barre à roues, d'un génois sur enrouleur, d'un lazy bag - lazy jack. Au niveau confort : douche séparée, Eau chaude, WC (avec cuve à eau noir), Réfrigérateur, chauffage, TV, radio, lecteur Ipod.", 
	category: "Voilier", 
	price_per_day: "125", 
	address: "Hyères", 
	owner: user_1
	)
boat_3.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

file = File.open(Rails.root.join("db", "seeds", "images", "bateau4.jpg"))
boat_4 = Boat.create(
	title: "BELLINGARDO — GHOST 5,50 OPEN (2010)", 
	description: "6 personnes · 40 chevaux · 5.5 mètresCe bateau est très bon pour les croiseurs quotidiens pour visiter nos villages côtiers de la mer ouw S. Terenzo, Lerici, Tellaro, Portovenere, et le célèbre et si beau, comme un jawels, 'CInque Terre'. Equipé de radio USB, réfrigérateur, douche d'eau douce, échosondeur avec GPS, bimini et bain de soleil. Pendant le voyage, vous pouvez également visiter les îles Palmaria et Tino avec votre paroi rocheuse donnant sur la mer.
Motorisé avec Yamaha 40 CV est possible de conduire sans permis est maximum pour six personnes. Life Jacket pour les enfants disponibles.", 
	category: "Bateau à moteur", 
	price_per_day: "240", 
	address: "Lerici", 
	owner: user_4
	)
boat_4.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

file = File.open(Rails.root.join("db", "seeds", "images", "bateau5.jpg"))
boat_5 = Boat.create(
	title: "QUICKSILVER — ACTIV 675 OPEN (2012)", 
	description: "6 personnes. Je loue mon quicksilver active 675 de 8 personnes. Le bateau est sur remorque, disponible sur le lac de Parentis 3500 ha ( pêche .promenade .activités nautique, compris dans la location la vignette navigation sur le lac et la place au port il possède un taud , un sondeur , suport de cannes ,coussin de bain de soleil, table sur pied mise en main facile ,le bateau est neuf et en bon état", 
	category: "Bateau à moteur", 
	price_per_day: "220", 
	address: "Marseille", 
	owner: user_5
	)
boat_5.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

file = File.open(Rails.root.join("db", "seeds", "images", "bateau6.jpg"))
boat_6 = Boat.create(
	title: "JEANNEAU — MERRY FISCHER 530 (2011)", 
	description: "Bonjour, Je vous propose à la location ce magnifique MERRY FISHER 530 idéal pour visiter les calanques de Marseille et les différentes îles paradisiaques avec ses espaces de bains de soleil mais aussi d'abri pendant la navigation . Le moteur Yamaha de 2011 70 CV permet de passer d'une calanque ou d'une île à l'autre en moins de 10 minutes !!! Idéal pour une petite famille , couple ou entre amis pour balade , visites sous marines en masque et tuba, ou moment de pêche ,tout le matériel se trouve à bord ! Mon bateau ne fait l' objet d'aucune autorisation délivrée par le parc national des calanques concernant le littoral vers cassis Toutefois aucune habilitation particulière n' est requise dans la rade de Marseille , la cote marseillaise , les iles Frioul , le château d if , la cote bleue etc ... EXCLUSIVITÉ : Si vous le souhaitez, possibilité de vous organiser une journée ou demi-journée sur le thème : Visite de Marseille par la mer, ses calanques, ses îles et ses côtes marseillaises. N'hésitez pas à vous offrir une journée éblouissante et éclaboussante !!! N'hésitez pas à revenir vers moi pour de plus amples informations. Julien", 
	category: "Bateau à moteur", 
	price_per_day: "215", 
	address: "Marseille", 
	owner: user_6)
boat_6.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

file = File.open(Rails.root.join("db", "seeds", "images", "bateau7.jpg"))
boat_7 = Boat.create(
	title: "FOUNTAINE PAJOT — MARQUISE 56 (1983)", 
	description: "Venez vivre une aventure authentique - Une expérience unique - Un voyage de rêve en Corse. BELUGA est un catamaran de 56 pieds (17,2m) rénové entièrement en 2016 et tout confort : • Cabines doubles spacieuses avec salles de bain et WC privatifs, ainsi que de multiples rangements • Cuisine équipée d’un grand réfrigérateur, congélateur, lave-vaisselle, four, plaques à induction… Voyage sur mesure en fonction de vos envies allant des criques sauvages accessibles uniquement par la mer aux villes atypiques telle Bonifacio. Décors de rêves et ballades garantis. Pour les activités : pêche à la ligne, baignades dans les réserves naturelles, relaxation sur les plages paradisiaques ou encore bronzage et détente sur le bateau. Pour les plus aventuriers : promenade en kayak biplace, snorkeling, ou encore wakeboard. Possibilité de participer aux manœuvres, d’apprendre les différentes techniques de navigation (faire un point par relevés ou avec un sextant) mais aussi à l’utilisation de traceurs, radars, AIS, pilote… avec un skipper expérimenté et surtout passionné. Pour profiter un maximum des visites et prendre le temps de vivre, je vous conseille une location sur au moins 6 jours. Le BELUGA se loue avec son skipper. --------------------------------------------- N’hésitez plus ! Echange, convivialité et détente seront au rendez-vous. Pour plus d’informations sur les tarifs et disponibilités, contactez-moi sur la messagerie Click & Boat.", 
	category: "Voilier", 
	price_per_day: "310", 
	address: "Porto-Vecchio", 
	owner: user_7)
boat_7.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

file = File.open(Rails.root.join("db", "seeds", "images", "bateau8.jpg"))
boat_8 = Boat.create(
	title: "LAGOON — MY40 (2015)", 
	description: "Bonjour, Je vous propose à la location ce magnifique catamaran à moteur Lagoon MY 40 avec skipper au départ de toute la côte d'Azur et la Corse. Ce catamaran moteur de type Trawler, est idéal pour un séjour ou une sortie en famille ou entre amis. Il possède tous les avantages d'un catamaran voile, sans les contraintes, et tout le confort d'un yacht à moteur, sans le bruit et le coût du carburant. Ses grands espaces de vie spacieux et lumineux sont idéaux pour une croisière tout confort. Il possède 4 cabines avec salles de bains, wc privatives, et 2 cabines équipage. Vu à la télé dans l'émission de TF1 **** Option obligatoire **** - Skipper : 200€/jour **** Options facultatives **** - Hôtesse : 200€/jour - Linge de bain, de toilettes, de lit : 45€/cabine Si vous embarquez à Cannes, nous vous offrons le carburant pour la journée si vous naviguez autour des Iles de Lerins, là où Kevin notre capitaine connait les plus beaux spots pour se baigner, faire du snorkeling, ou du paddle (nous en avons un à bord). Vous pouvez amener à bord nourriture et boissons, Pour des déplacements hors locaux, pour les locations séjour, le carburant est facturé 30€/heure, mais un forfait peut vous être proposé en fonction de l'itinéraire prévu. N'hésitez pas à le contacter via la messagerie Click and Boat pour de plus amples informations. À bientôt !", 
	category: "Voilier", 
	price_per_day: "305", 
	address: "Cannes", 
	owner: user_6)
boat_8.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')

file = File.open(Rails.root.join("db", "seeds", "images", "bateau9.jpg"))
boat_9 = Boat.create(
	title: "LAGOON — 420 (2008)", 
	description: "8 personnes · 2 cabines · 4 couchages · 2 salles de bain. Nous pouvons accueillir 8 personnes la journée et 4 personnes pour les nuitées  ( 2 cabines privatisées ). Tout est prévu pour votre plaisir; masques, palmes, tubas, matériel de pêche, canoë  3 places, 2 scooters sous-marin, paddle, Gopro, livres, tv par satellite, musique (15000 morceaux, connexion Bluetooth) Hi-Fi Bose intérieur et extérieur. Éclairage sous marin pour les bains de nuit... Il ne reste plus qu'à profiter de votre séjour.", 
	category: "Voilier", 
	price_per_day: "345", 
	address: "Marseille", 
	owner: user_7)
boat_9.photo.attach(io: file, filename: 'nes.jpg', content_type: 'image/jpg')
puts "End of Adding Boats"


puts "Adding Bookings"
booking_1 = Booking.create({renter: user_1, boat: boat_9 ,start_date: Date.strptime('2021-02-01', '%Y-%m-%d') ,end_date: Date.strptime('2021-03-05', '%Y-%m-%d') ,booking_status: "En attente"})
booking_2 = Booking.create({renter: user_2, boat: boat_8 ,start_date: Date.strptime('2021-02-02', '%Y-%m-%d') ,end_date: Date.strptime('2021-03-06', '%Y-%m-%d') ,booking_status: "En attente"})
booking_3 = Booking.create({renter: user_3, boat: boat_7 ,start_date: Date.strptime('2021-02-03', '%Y-%m-%d') ,end_date: Date.strptime('2021-03-07', '%Y-%m-%d') ,booking_status: "En attente"})
booking_4 = Booking.create({renter: user_2, boat: boat_6 ,start_date: Date.strptime('2021-02-04', '%Y-%m-%d') ,end_date: Date.strptime('2021-03-08', '%Y-%m-%d') ,booking_status: "En attente"})
booking_5 = Booking.create({renter: user_1, boat: boat_5 ,start_date: Date.strptime('2021-02-05', '%Y-%m-%d') ,end_date: Date.strptime('2021-03-09', '%Y-%m-%d') ,booking_status: "En attente"})
booking_6 = Booking.create({renter: user_2, boat: boat_4 ,start_date: Date.strptime('2021-02-06', '%Y-%m-%d') ,end_date: Date.strptime('2021-03-10', '%Y-%m-%d') ,booking_status: "En attente"})
booking_7 = Booking.create({renter: user_3, boat: boat_3 ,start_date: Date.strptime('2021-02-07', '%Y-%m-%d') ,end_date: Date.strptime('2021-03-11', '%Y-%m-%d') ,booking_status: "En attente"})
booking_8 = Booking.create({renter: user_2, boat: boat_2 ,start_date: Date.strptime('2021-02-08', '%Y-%m-%d') ,end_date: Date.strptime('2021-03-12', '%Y-%m-%d') ,booking_status: "En attente"})
booking_9 = Booking.create({renter: user_1, boat: boat_1 ,start_date: Date.strptime('2021-02-09', '%Y-%m-%d') ,end_date: Date.strptime('2021-03-13', '%Y-%m-%d') ,booking_status: "En attente"})
puts "End of Adding Bookings"


