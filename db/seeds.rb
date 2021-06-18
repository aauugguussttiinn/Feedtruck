p "*" * 50
p " " * 50
p "                 STARTING SEEDING                 "
p " " * 50
p "*" * 50

p "Destroy curent data..."

p "Destroying Customer... #{Customer.count} "
Customer.destroy_all

p "Destroying Foodtruck... #{Foodtruck.count} "
Foodtruck.destroy_all

p "Destroying Location... #{Location.count} "
Location.destroy_all

p "Destroying Item... #{Item.count} "
Item.destroy_all

p "Destroying Cart... #{Cart.count} "
Cart.destroy_all

p "Destroying CartContent... #{CartContent.count} "
CartContent.destroy_all

p "Destroying Order... #{Order.count} "
Order.destroy_all

p "Destroying OrderContent... #{OrderContent.count} "
OrderContent.destroy_all

p "-" * 50
p "-" * 50

p 'LOCATIONS'
p Location.create(name: "Paris 3eme", adress: "Métro Rambuteau")
p Location.create(name: "Paris 4eme", adress: "Métro Hôtel de Ville")
p Location.create(name: "Paris 5eme", adress: "Métro Place Monge")
p Location.create(name: "Paris 9eme", adress: "Place de l'Opéra")
p Location.create(name: "Paris 10eme", adress: "Place de la République")
p Location.create(name: "Paris 19eme", adress: "Place des Fêtes")

p "-" * 50

p 'CUSTOMERS'
p Customer.create(email: "augustin.thp@yopmail.com", password: "azerty1234", first_name: "Augustin", last_name: "Berne")
p Customer.create(email: "nicolas.thp@yopmail.com", password: "azerty1234", first_name: "Nicolas", last_name: "Heckman")
p Customer.create(email: "julien.thp@yopmail.com", password: "azerty1234", first_name: "Julien", last_name: "Parrat")
p Customer.create(email: "florent.thp@yopmail.com", password: "azerty1234", first_name: "Florent", last_name: "Ngongang")
p Customer.create(email: "mathieu.thp@yopmail.com", password: "azerty1234", first_name: "Mathieu", last_name: "Paradis")

p "-" * 50

p 'FOODTRUCKS'
p Foodtruck.create(email: "burgerqueen@yopmail.com", password: "azerty1234", name: "Burger Queen", description: "Burger Queen c'est du boeuf et de l'amour ! Du boeuf d'élevage d'une qualité exceptionnelle haché sur place, associé à des fromages tranchés à la main, des sauces préparées avec amour et des frites coupées par nos soins. Un amour fou dans la manière d'aborder notre métier, de concevoir nos recettes, et de recevoir nos clients. Voici nos passages : Lundi (4ème), Mardi (10ème), Mercredi (4ème), Jeudi (19eme), Vendredi (3ème)")
p Foodtruck.create(email: "wesushi@yopmail.com", password: "azerty1234", name: "We Sushi", description: "We Sushi bouge un peu partout près de chez vous. Sans cesse à la recherche de nouveaux pied-à-terre, découvrez où et quand vous pourrez déguster nos sushis. Retrouvez-nous près de chez vous : Lundi (3ème), Mardi (5ème), Mercredi (19ème), Jeudi (10eme), Vendredi (4ème)")
p Foodtruck.create(email: "saladbar@yopmail.com", password: "azerty1234", name: "Salad bar", description: "Salade fraîche, salade gourmande... venez découvrir celle qui vous convient. Avec notre grand choix de salades, vous êtes sûr de trouver votre bonheur. Nous serons près de chez vous : Lundi (9ème), Mardi (5ème), Mercredi (9ème), Jeudi (5eme), Vendredi (9ème)")
p Foodtruck.create(email: "pappajohnny@yopmail.com", password: "azerty1234", name: "Pappa Johnny", description: "Johnny a grandi à Palerme au coeur de notre belle Italia, dans une famille ou le métier se transmet de père en fils. On parie que vous craquerez pour l'authenticité de ses pizzas ? Où retrouver Pappa Johnny ? Lundi (10ème), Mardi (3ème), Mercredi (4ème), Jeudi (19eme), Vendredi (10ème)")
p Foodtruck.create(email: "tacotruck@yopmail.com", password: "azerty1234", name: "Taco Truck", description: "Vous avez une bonne grosse dale en lendemain de soirée ? Tacos is the new kebab, et vous pourrez toujours compter sur Taco Truck pour vous requinquer ! Venez donc nous rendre visite : Lundi (19ème), Mardi (3ème), Mercredi (10ème), Jeudi (5eme), Vendredi (3ème)")
p Foodtruck.create(email: "veganplace@yopmail.com", password: "azerty1234", name: "Vegan place", description: "QUe de fraicheur dans nos assiettes! Nous ne cuisinons qu'avec les produits les plus frais pour régaler vos papilles ! On vous attend avec impatience : Lundi (19ème), Mardi (10ème), Mercredi (9ème), Jeudi (5eme), Vendredi (4ème)")

p "-" * 50

p 'ITEMS'
p 'Items - foodtruck 1'
p Item.create(name: "Regular burger", description: "steak de boeuf x2, salade, tomate, cornichon, oignon, fromage x2, ketchup", price: 6.50, foodtruck_id: 1)
p Item.create(name: "Cheeseburger", description: "steak de boeuf, salade, oignon, fromage, ketchup, moutarde", price: 6.50, foodtruck_id: 1)
p Item.create(name: "Fish burger", description: "poisson panné,  salade, tomate, oignon, fromage, mayonnaise", price: 7, foodtruck_id: 1)
p Item.create(name: "Chicken burger", description: "poulet panné, salade, tomate, oignon, mayonnaise", price: 7.50, foodtruck_id: 1)
p Item.create(name: "Veggie burger", description: "steak vegan, salade, tomate, noix de cajou, ketchup", price: 8, foodtruck_id: 1)
p Item.create(name: "Bacon burger", description: "steak de boeuf x2, bacon grillé x3, fromage x2, moutarde", price: 8, foodtruck_id: 1)
p Item.create(name: "Double Cheeseburger", description: "steak de boeuf x2, salade, tomate, cornichon, oignon, fromage x4, ketchup", price: 9.50, foodtruck_id: 1)
p Item.create(name: "Triple’O burger", description: "steak de boeuf x3, salade, tomate, cornichon, oeuf,  fromage x3, ketchup", price: 11, foodtruck_id: 1)
p Item.create(name: "Frites", description: "pommes de terre frites", price: 4, foodtruck_id: 1)
p Item.create(name: "Onions rings", description: "oignons frits", price: 3.50, foodtruck_id: 1)

p 'Items - foodtruck 2'
p Item.create(name: "Nigiri saumon x2", description: "saumon, riz", price: 2.50, foodtruck_id: 2)
p Item.create(name: "Nigiri crevette x2", description: "crevette, riz", price: 2.70, foodtruck_id: 2)
p Item.create(name: "Nigiri thon x2", description: "thon, riz", price: 2.80, foodtruck_id: 2)
p Item.create(name: "Maki saumon x6", description: "saumon, riz, feuille d'algues", price: 4.50, foodtruck_id: 2)
p Item.create(name: "Maki thon x9", description: "thon, riz, feuille d'algues", price: 5.50, foodtruck_id: 2)
p Item.create(name: "Sashimi saumon x8", description: "saumon", price: 6, foodtruck_id: 2)
p Item.create(name: "Sashimi thon x8", description: "thon", price: 8, foodtruck_id: 2)
p Item.create(name: "Crevettes tempura x3", description: "crevette", price: 4, foodtruck_id: 2)
p Item.create(name: "Gyoza poulet x4", description: "poulet, chou, ail, oignon, ciboulette", price: 4, foodtruck_id: 2)
p Item.create(name: "Gyoza veggie x4", description: "chou, carotte, oignon, poireau", price: 3.50, foodtruck_id: 2)
p Item.create(name: "Sashimi bowl", description: "tranche de saumon x6, tranche de saumon x6, riz, salade d’algues", price: 3.50, foodtruck_id: 2)
p Item.create(name: "Tempura bowl", description: "riz, salade de chou, gyoza poulet x3, crevette tempura x3, avocat, graines de sésame", price: 3.50, foodtruck_id: 2)

p 'Items - foodtruck 3'
p Item.create(name: "Salade niçoise", description: "mesclun, oeuf, thon, olives, tomates, poivron, anchois", price: 6.50, foodtruck_id: 3)
p Item.create(name: "Salade césar", description: "laitue, poulet, croûtons, parmesan", price: 6.50, foodtruck_id: 3)
p Item.create(name: "Salade lyonnaise", description: "salade, oeuf, thon, croûtons, jambon, olives", price: 7, foodtruck_id: 3)
p Item.create(name: "Salade nordique", description: "salade, tomate, saumon fumé, olives", price: 8.50, foodtruck_id: 3)
p Item.create(name: "Salade gourmande", description: "mâche, roquette, poulet, mozzarella, oeuf, tomate cerise, avocat, noix", price: 10, foodtruck_id: 3)
p Item.create(name: "Salade périgourdine", description: "salade frisée, pommes de terre, tomate, haricots verts, gésiers confts, lardons", price: 10.50, foodtruck_id: 3)
p Item.create(name: "Salade de pâtes", description: "pâtes fusilli, tomate, oignon, basilic, mozzarella, olives", price: 6.50, foodtruck_id: 3)
p Item.create(name: "Salade de crudités", description: "tomate, maïs, poivron, concombre, soja", price: 7, foodtruck_id: 3)
p Item.create(name: "Salade grecque", description: "tomate, poivron, concombre, feta, olives, oignon, basilic", price: 9.50, foodtruck_id: 3)
p Item.create(name: "Salade de exotique", description: "épinards, grenade, poulet, betterave, olives", price: 6.50, foodtruck_id: 3)

p 'Items - foodtruck 4'
p Item.create(name: "Pizza margherita", description: "tomate, mozzarella, basilic", price: 8.50, foodtruck_id: 4)
p Item.create(name: "Pizza pepperoni", description: "tomate, pepperoni, emmental", price: 9.50, foodtruck_id: 4)
p Item.create(name: "Pizza savoyarde", description: "emmental, lardons, pommes de terre", price: 10, foodtruck_id: 4)
p Item.create(name: "Pizza végétarienne", description: "tomate, poivron, courgette, maïs, olives", price: 10.50, foodtruck_id: 4)
p Item.create(name: "Pizza piquante", description: "tomate, emmental, peppéroni, piment, harissa", price: 10.50, foodtruck_id: 4)
p Item.create(name: "Pizza champignon", description: "tomate, emmental, jambon, champignons", price: 10.50, foodtruck_id: 4)
p Item.create(name: "Pizza mixte", description: "tomate, aubergine, emmental, origan", price: 11, foodtruck_id: 4)
p Item.create(name: "Pizza hawaïenne", description: "tomate, emmental, jambon, ananas", price: 11, foodtruck_id: 4)
p Item.create(name: "Pizza napolitaine", description: "tomate, oignon, emmental, olives, anchoix, câpres", price: 12, foodtruck_id: 4)
p Item.create(name: "Pizza sucrée", description: "fraise, basilic, crème fraiche, groseille, kiwi", price: 13, foodtruck_id: 4)

p 'Items - foodtruck 5'
p Item.create(name: "Beef tacos", description: "viande de boeuf, tomate, haricots rouges, poivron, oignon, fromage, tabasco", price: 8, foodtruck_id: 5)
p Item.create(name: "Porc tacos", description: "viande de porc, tomate, haricots rouges, poivron, oignon, fromage, tabasco", price: 7, foodtruck_id: 5)
p Item.create(name: "Fish tacos", description: "thon, tomate, haricots rouges, poivron, avocat, oignon", price: 7, foodtruck_id: 5)
p Item.create(name: "Buritto", description: "galette de blé, viande de boeuf, tomate, salade, haricots noirs, poivron, oignon, fromage, crème fraiche", price: 9.50, foodtruck_id: 5)
p Item.create(name: "Cheese quesadillas", description: "galette de maïs, fromage, oignon", price: 7.50, foodtruck_id: 5)
p Item.create(name: "Chicken quesadillas", description: "galette de maïs, poulet, fromage, oignon, champignons, poivron", price: 8.50, foodtruck_id: 5)
p Item.create(name: "Nachos", description: "chips tortilla, fromage, tomate, haricots rouges, maïs, oignon, guacamole, crème fraiche", price: 8.50, foodtruck_id: 5)

p 'Items - foodtruck 6'
p Item.create(name: "Beyond meat burger", description: "steak vegan, salade, tomate, graines de sésame, avocat", price: 8, foodtruck_id: 6)
p Item.create(name: "Buddha Bowl", description: "avocat, pois chiches, patate douce, riz blanc, citron", price: 8, foodtruck_id: 6)
p Item.create(name: "Taboulé revisité", description: "semoule, romarin, tomate, orange, poivron", price: 8, foodtruck_id: 6)
p Item.create(name: "Nouilles sautées", description: "nouilles, poivrons, piment, brocolis, graines de sésame", price: 8, foodtruck_id: 6)
p Item.create(name: "Tartines", description: "épinards, avocat, graines de sésame, pain de mie", price: 8, foodtruck_id: 6)