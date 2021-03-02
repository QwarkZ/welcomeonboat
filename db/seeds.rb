require 'faker'

puts "Adding Users"
10.times do
  User.create!(
    {
      first_name: Faker::Name.first_name ,
      last_name: Faker::Name.last_name ,
      email: Faker::Internet.email,
      password: "azerty"
    }
  )
end
puts "End of Adding Users"



puts "Adding Boats"
boat_1 = Boat.create({title: "JEANNEAU — SUN ODYSSEY 40.3 (2006)", description: "MAX V est un sun-odyssey,quillard GTE de 2006. Bateau rapide pour une carène de croisière et très marin, facile à barrer en équipage réduit: je le mène souvent seul et j'ai 73 ans!( cet été, nous sommes montés à Copenhague à deux) C'est un bateau très confortable: - trois cabines doubles - deux salles d'eau avec douche et wc -chauffe-eau électrique et fonctionnant avec le refroidissement du moteur. -réserves d'eau douce: 300 litres -réserve de gazoil: 140 litres Les voiles sont en bon état: La grand-voile est de 2014 Le genois sur enrouleur de 2013 Le spi, triradial est dans un état neuf Je pense que le tourmentin n'a jamais servi! pas avec moi toujours!!! Les plans de navigation au départ de Lorient: Vous pouvez bien sur envisager de suivre les nombreux 60 pieds et autres maxi-multis qui s'entrainent sur le plan d'eau....mais, plus modestement: L'ile de Groix est à 6 nautiques Belle-ile et le golfe du morbihan sont à 20 nautiques L'archipel des Glénans, les iles de Houat et Oedic sont à 25 Nautiques Vous pouvez également partir sur l'angleterre ou l'irlande ou la Galice qui sont à deux ou trois jours de mer de Lorient.( Pour les plus amarinés) Le bateau est équipé d'un logiciel de navigation sur PC et d'un AIS. Mais il peut être aussi très agréable de musarder le long de la côte sud du Finistère, entre Lorient et Penmarch, dans les jolies rias du Belon, de Roz-Bras, Concarneau, l'Odet, Loctudy Venez vous rendre compte que la Bretagne est bien plus agréable que la méditerranée pour naviguer et surtout plus économique et moins encombrée. A bientôt donc en Bretagne sud. On me demande de parler de moi:il n'y a pas grand'chose à dire: que je navigue depuis 60 ans,que Max est mon dixième bateau et que je suis un dingue de régate. C'est tout!", category: "Voilier", price_per_day: "150", address: "Kernével", owner_id: "1"})
boat_2 = Boat.create({title: "KIRIE - FEELING — FEELING 32 (2003)", description: "Feeling 32 année 2003, c'est un quillard avec un tirant d'eau 1.65m, bi safran, électronique dernière génération simrad, GV X voiles, génois sur enrouleur neuf pour printemps 2017 de chez, habitable bien équipé et confortable. C'est le voilier idéal pour la navigation et la croisière en Finistère Sud, vers les Glénan, le Morbihan et ses îles (Groix, Belle-Île, Houat et Hoedic..)frigo neuf (juin 2018) N'hésitez pas à me laisser un message", category: "Voilier", price_per_day: "220", address: "Loctudy", owner_id: "2"})
boat_3 = Boat.create({title: "JEANNEAU — SUN ODYSSÉE 349 (2014)", description: "Mis à l'eau en mai 2014, Le Sun Odyssée 349 est prévu pour la navigation hauturière. Il s'agit d'un bateau de marque Jeanneau très bien conçu, rapide et agréable à barrer avec ses deux barres à roues. il est équipé d'un GPS-traceur avec les cartes navionics méditerranée, d'un pilote automatique, de 2 barre à roues, d'un génois sur enrouleur, d'un lazy bag - lazy jack. Au niveau confort : douche séparée, Eau chaude, WC (avec cuve à eau noir), Réfrigérateur, chauffage, TV, radio, lecteur Ipod, Je mets également gratuitement à disposition 2 paddles gonflables ! Au départ d’Hyères vous découvrirez facilement les beautés de la côté d'Azur comme les îles de Port-Cros et Porquerolles ainsi que la rade Giens. En partant d'Hyères vous pourrez facilement découvrir au cours d'une croisière Toulon, Cannes ou bien partir vers en Corse, pour les marins les plus expérimentés et les amoureux de paysages magnifiques. En effet l'île de beauté vaut vraiment le détour et est parfaitement adaptée à la navigation. Pour toute question, contactez-moi directement par message ! A bientôt !", category: "Voilier", price_per_day: "125", address: "Hyères", owner_id: "3"})
boat_4 = Boat.create({title: "BELLINGARDO — GHOST 5,50 OPEN (2010)", description: "This boat is very good for daily cruiser to visit our coastal villages from the sea ouw S. Terenzo, Lerici, Tellaro, Portovenere, and the famous and so beautyfull, like a jawels,Equipped with radio USB, refrigerator, fresh water shower, echosounder with GPS, bimini and sunbathing. During the trip you can also visit the Palmaria and Tino islands with yours rocky wall overlooking to the sea. Motorized with Yamaha 40 hp is possible to drive without licence is maximum for six peoples. Life Jacket for children available. My feeback are the guarantee of quality of the boat and of our seriousness and passion with which we want let you discover these beauties that our sea offer us. We are at work ever during the year if the weather and sea conditions are good and temperature is confortable. See on board soon, guys!!!!!!!!!!!", category: "Bateau à moteur", price_per_day: "240", address: "Lerici", owner_id: "4"})
boat_5 = Boat.create({title: "QUICKSILVER — ACTIV 675 OPEN (2012)", description: "Depuis le port de la Pointe Rouge et exceptionnellement du Vieux Port. Envie de découvrir l'archipel du Frioul, le Parc National des Calanques en naviguant entre Marseille et Cassis, ou admirer le littoral depuis la mer ? Aller dans un petit restaurant inaccessible ou simplement passer un moment en terrasse sur l'ile du Frioul ? Organiser une sortie en famille, une partie de pêche entre amis, un pique nique à bord du bateau ou surfer sur les vagues en wakeboard ? Un apéro dernier bain ?... n’hésitez pas à nous contacter. Nous pouvons vous aider à réaliser tout cela, par une aide à la prise en main du bateau, des conseils avisés pour passer une agréable sortie en mer. Une carte marine du Parc vous sera également donnée lors du départ. Spacieux, agréable, sécurisant pour les grands et les petits. Ce bateau offre un grand bain de soleil à l'avant, une banquette trois places à l'arrière, un taud de soleil pour avoir de l'ombre. Une petite cabine vous permet de ranger vos affaires. Le bateau est équipé d'un guindeau électrique, d'un poste radio bluetooth et d'une douchette de pont. Très maniable, doté d'un moteur économique de 150 cv, il vous procurera des sensations agréables avec une bonne tenue en mer. Pack compris avec la location : Glacière, 2 bouteilles d'eau 1,5 l, glaçons, masques, palmes et tubas. en option, supplément sur demande : Wake board - bouée tractée - matériel de pêche", category: "Bateau à moteur", price_per_day: "220", address: "Marseille", owner_id: "5"})
boat_6 = Boat.create({title: "JEANNEAU — MERRY FISCHER 530 (2011)", description: "MERCI DE BIEN VOULOIR VOUS RENSEIGNER AU PREALABLE SUR LES CONDITIONS DE NAVIGATION DANS LE PARC DES CALANQUES Bonjour, Je vous propose à la location ce magnifique MERRY FISHER 530 idéal pour visiter les calanques de Marseille et les différentes îles paradisiaques avec ses espaces de bains de soleil mais aussi d'abri pendant la navigation . Le moteur Yamaha de 2011 70 CV permet de passer d'une calanque ou d'une île à l'autre en moins de 10 minutes !!! Idéal pour une petite famille , couple ou entre amis pour balade , visites sous marines en masque et tuba, ou moment de pêche ,tout le matériel se trouve à bord ! Mon bateau ne fait l' objet d'aucune autorisation délivrée par le parc national des calanques concernant le littoral vers cassis Toutefois aucune habilitation particulière n' est requise dans la rade de Marseille , la cote marseillaise , les iles Frioul , le château d if , la cote bleue etc ... EXCLUSIVITÉ : Si vous le souhaitez, possibilité de vous organiser une journée ou demi-journée sur le thème : Visite de Marseille par la mer, ses calanques, ses îles et ses côtes marseillaises. N'hésitez pas à vous offrir une journée éblouissante et éclaboussante !!! N'hésitez pas à revenir vers moi pour de plus amples informations. Julien", category: "Bateau à moteur", price_per_day: "215", address: "Marseille", owner_id: "6"})
boat_7 = Boat.create({title: "FOUNTAINE PAJOT — MARQUISE 56 (1983)", description: "Venez vivre une aventure authentique - Une expérience unique - Un voyage de rêve en Corse. BELUGA est un catamaran de 56 pieds (17,2m) rénové entièrement en 2016 et tout confort : • Cabines doubles spacieuses avec salles de bain et WC privatifs, ainsi que de multiples rangements • Cuisine équipée d’un grand réfrigérateur, congélateur, lave-vaisselle, four, plaques à induction… Voyage sur mesure en fonction de vos envies allant des criques sauvages accessibles uniquement par la mer aux villes atypiques telle Bonifacio. Décors de rêves et ballades garantis. Pour les activités : pêche à la ligne, baignades dans les réserves naturelles, relaxation sur les plages paradisiaques ou encore bronzage et détente sur le bateau. Pour les plus aventuriers : promenade en kayak biplace, snorkeling, ou encore wakeboard. Possibilité de participer aux manœuvres, d’apprendre les différentes techniques de navigation (faire un point par relevés ou avec un sextant) mais aussi à l’utilisation de traceurs, radars, AIS, pilote… avec un skipper expérimenté et surtout passionné. Pour profiter un maximum des visites et prendre le temps de vivre, je vous conseille une location sur au moins 6 jours. Le BELUGA se loue avec son skipper. --------------------------------------------- N’hésitez plus ! Echange, convivialité et détente seront au rendez-vous. Pour plus d’informations sur les tarifs et disponibilités, contactez-moi sur la messagerie Click & Boat.", category: "Voilier", price_per_day: "310", address: "Porto-Vecchio", owner_id: "7"})
boat_8 = Boat.create({title: "LAGOON — 420 (2008)", description: "Bateaux de propriétaires, nous avons choisi le Lagoon 420 pour son confort et son habitabilité afin d'apporter à nos invités une attention toute particulière. Nous pouvons accueillir 8 personnes la journée et 4 personnes pour les nuitées ( 2 cabines privatisées ). Notre catamaran est amarré au cœur de la magnifique cité lacustre de Port Grimaud. Nous organisons des croisières en pension complète (sauf l'alcool.) Les repas sont réalisés par Carole à partir de produits frais uniquement. Le linge de maison (draps, serviettes, draps de bains, ...) sont inclus. **** TOUT EST COMPRIS ***** CARBURANT COMPRIS. Ménage de fin séjour compris... Pas de mauvaises surprises Tout est prévu pour votre plaisir; masques, palmes, tubas, matériel de pêche, canoë 3 pl, 2 scooters sous-marin, paddle, Gopro, livres, tv par satellite, musique (15000 morceaux, connexion Bluetooth) Hi-Fi Bose intérieur et extérieur. Éclairage sous marin pour les bains de nuit... Nous déterminons ensemble, et avec Éole le parcours qui vous convient. Pour une escapade en Corse, nous contacter, frais carburant supplémentaires. Pour toute demande concernant journée + nuitée merci de nous contacter. A votre disposition pour trouver la formule la plus adaptée à votre projet ! Pour votre confort, nous avons à bord un Déssalinisateur, un groupe électrogène 8kw. 3 réfrigérateurs, 1 congélateur, Nespresso, 1 grande plancha uniquement le soir (pour le poisson pêché par exemple) 2 cabines équipées de literie de qualité 160x200 et de ventilateurs, elles ont leurs propres salles de bains et wc électriques. Annexe fond rigide avec moteur de 15cv. ****Vous n'avez que vos effets personnels à amener, votre sourire et votre bonne humeur*** Notre tarif du 15 octobre au 15 mai, déduire 10% Au plaisir de vous recevoir à bord. Pour tout autre demande nous contacter. Carole et François ⛵️⛵️ Tarif: la journée 1350€ - 2 jours 3097€ - 3 jours 4458€ - 4 jours 5591€ - 5 jours 6638€ - 6 jours 7567€ - la semaine 8387€ - Non compris: frais de port et bouées", category: "Voilier", price_per_day: "345", address: "Cogolin", owner_id: "8"})
boat_9 = Boat.create({title: "LAGOON — MY40 (2015)", description: "Bonjour, Je vous propose à la location ce magnifique catamaran à moteur Lagoon MY 40 avec skipper au départ de toute la côte d'Azur et la Corse. Ce catamaran moteur de type Trawler, est idéal pour un séjour ou une sortie en famille ou entre amis. Il possède tous les avantages d'un catamaran voile, sans les contraintes, et tout le confort d'un yacht à moteur, sans le bruit et le coût du carburant. Ses grands espaces de vie spacieux et lumineux sont idéaux pour une croisière tout confort. Il possède 4 cabines avec salles de bains, wc privatives, et 2 cabines équipage. Vu à la télé dans l'émission de TF1 **** Option obligatoire **** - Skipper : 200€/jour **** Options facultatives **** - Hôtesse : 200€/jour - Linge de bain, de toilettes, de lit : 45€/cabine Si vous embarquez à Cannes, nous vous offrons le carburant pour la journée si vous naviguez autour des Iles de Lerins, là où Kevin notre capitaine connait les plus beaux spots pour se baigner, faire du snorkeling, ou du paddle (nous en avons un à bord). Vous pouvez amener à bord nourriture et boissons, Pour des déplacements hors locaux, pour les locations séjour, le carburant est facturé 30€/heure, mais un forfait peut vous être proposé en fonction de l'itinéraire prévu. N'hésitez pas à le contacter via la messagerie Click and Boat pour de plus amples informations. À bientôt !", category: "Voilier", price_per_day: "305", address: "Cannes", owner_id: "9"})
puts "End of Adding Boats"

