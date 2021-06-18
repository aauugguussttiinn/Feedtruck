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
p Location.create(name: "Paris 3ème", adress: "Métro Rambuteau")
p Location.create(name: "Paris 4ème", adress: "Métro Hôtel de Ville")
p Location.create(name: "Paris 5ème", adress: "Métro Place Monge")
p Location.create(name: "Paris 9ème", adress: "Place de l'Opéra")
p Location.create(name: "Paris 10ème", adress: "Place de la République")
p Location.create(name: "Paris 19ème", adress: "Place des Fêtes")

p "-" * 50

p 'CUSTOMERS'
p Customer.create(email: "augustin.thp@yopmail.com", password: "azerty1234", first_name: "Augustin", last_name: "Berne")
p Customer.create(email: "nicolas.thp@yopmail.com", password: "azerty1234", first_name: "Nicolas", last_name: "Heckman")
p Customer.create(email: "julien.thp@yopmail.com", password: "azerty1234", first_name: "Julien", last_name: "Parat")
p Customer.create(email: "florent.thp@yopmail.com", password: "azerty1234", first_name: "Florent", last_name: "Ngongang")
p Customer.create(email: "mathieu.thp@yopmail.com", password: "azerty1234", first_name: "Mathieu", last_name: "Paradis")

p "-" * 50

p 'FOODTRUCKS'
p Foodtruck.create(email: "burgerqueen@yopmail.com", password: "azerty1234", name: "Burger Queen", description: "Burger Queen c'est du boeuf et de l'amour ! Du boeuf d'élevage d'une qualité exceptionnelle haché sur place, associé à des fromages tranchés à la main, des sauces préparées avec amour et des frites coupées par nos soins. Un amour fou dans la manière d'aborder notre métier, de concevoir nos recettes, et de recevoir nos clients. Voici nos passages : Lundi (4ème), Mardi (10ème), Mercredi (4ème), Jeudi (19eme), Vendredi (3ème)").pictures.attach(io: File.open('public/food_truck_pictures/foodtruck_1.jpg'), filename: 'f1.jpg')
p Foodtruck.create(email: "wesushi@yopmail.com", password: "azerty1234", name: "We Sushi", description: "We Sushi bouge un peu partout près de chez vous. Sans cesse à la recherche de nouveaux pied-à-terre, découvrez où et quand vous pourrez déguster nos sushis. Retrouvez-nous près de chez vous : Lundi (3ème), Mardi (5ème), Mercredi (19ème), Jeudi (10eme), Vendredi (4ème)").pictures.attach(io: File.open('public/food_truck_pictures/foodtruck_2.jpg'), filename: 'f2.jpg')
p Foodtruck.create(email: "saladbar@yopmail.com", password: "azerty1234", name: "Salad bar", description: "Salade fraîche, salade gourmande... venez découvrir celle qui vous convient. Avec notre grand choix de salades, vous êtes sûr de trouver votre bonheur. Nous serons près de chez vous : Lundi (9ème), Mardi (5ème), Mercredi (9ème), Jeudi (5eme), Vendredi (9ème)").pictures.attach(io: File.open('public/food_truck_pictures/foodtruck_3.jpg'), filename: 'f3.jpg')
p Foodtruck.create(email: "pappajohnny@yopmail.com", password: "azerty1234", name: "Pappa Johnny", description: "Johnny a grandi à Palerme au coeur de notre belle Italia, dans une famille ou le métier se transmet de père en fils. On parie que vous craquerez pour l'authenticité de ses pizzas (bon ok, il considère que la pizza sucrée est une hérésie) ? Où retrouver Pappa Johnny ? Lundi (10ème), Mardi (3ème), Mercredi (4ème), Jeudi (19eme), Vendredi (10ème)").pictures.attach(io: File.open('public/food_truck_pictures/foodtruck_4.jpg'), filename: 'f4.jpg')
p Foodtruck.create(email: "tacotruck@yopmail.com", password: "azerty1234", name: "Taco Truck", description: "Vous avez une bonne grosse dale en lendemain de soirée ? Tacos is the new kebab, et vous pourrez toujours compter sur Taco Truck pour vous requinquer ! Venez donc nous rendre visite : Lundi (19ème), Mardi (3ème), Mercredi (10ème), Jeudi (5eme), Vendredi (3ème)").pictures.attach(io: File.open('public/food_truck_pictures/foodtruck_5.jpg'), filename: 'f5.jpg')
p Foodtruck.create(email: "veganplace@yopmail.com", password: "azerty1234", name: "Vegan place", description: "QUe de fraicheur dans nos assiettes! Nous ne cuisinons qu'avec les produits les plus frais pour régaler vos papilles ! On vous attend avec impatience : Lundi (19ème), Mardi (10ème), Mercredi (9ème), Jeudi (5eme), Vendredi (4ème)").pictures.attach(io: File.open('public/food_truck_pictures/foodtruck_6.jpg'), filename: 'f6.jpg')

p "-" * 50

p 'ITEMS'
p 'Items - foodtruck 1'
p Item.create(name: "Regular burger", description: "steak de boeuf x2, salade, tomate, cornichon, oignon, fromage x2, ketchup", price: 6.50, foodtruck_id: 1).picture.attach(io: File.open('public/food_items_pictures/foodtruck-1_regular-burger.jpg'), filename: 'f1-regular.jpg')
p Item.create(name: "Cheeseburger", description: "steak de boeuf, salade, oignon, fromage, ketchup, moutarde", price: 6.50, foodtruck_id: 1).picture.attach(io: File.open('public/food_items_pictures/foodtruck-1_cheeseburger.jpg'), filename: 'f1-cheeseburger.jpg')
p Item.create(name: "Fish burger", description: "poisson panné,  salade, tomate, oignon, fromage, mayonnaise", price: 7, foodtruck_id: 1).picture.attach(io: File.open('public/food_items_pictures/foodtruck-1_fish-burger.jpg'), filename: 'f1-fish.jpg')
p Item.create(name: "Chicken burger", description: "poulet panné, salade, tomate, oignon, mayonnaise", price: 7.50, foodtruck_id: 1).picture.attach(io: File.open('public/food_items_pictures/foodtruck-1_chicken-burger.jpg'), filename: 'f1-chicken.jpg')
p Item.create(name: "Veggie burger", description: "steak vegan, salade, tomate, noix de cajou, ketchup", price: 8, foodtruck_id: 1).picture.attach(io: File.open('public/food_items_pictures/foodtruck-1_veggie-burger.jpg'), filename: 'f1-veggie-burger.jpg')
p Item.create(name: "Bacon burger", description: "steak de boeuf x2, bacon grillé x3, fromage x2, moutarde", price: 8, foodtruck_id: 1).picture.attach(io: File.open('public/food_items_pictures/foodtruck-1_bacon-burger.jpg'), filename: 'f1-bacon-burger.jpg')
p Item.create(name: "Double Cheeseburger", description: "steak de boeuf x2, salade, tomate, cornichon, oignon, fromage x4, ketchup", price: 9.50, foodtruck_id: 1).picture.attach(io: File.open('public/food_items_pictures/foodtruck-1_double-burger.jpeg'), filename: 'f1-double-cheese.jpg')
p Item.create(name: "Triple’O burger", description: "steak de boeuf x3, salade, tomate, cornichon, oeuf,  fromage x3, ketchup", price: 11, foodtruck_id: 1).picture.attach(io: File.open('public/food_items_pictures/foodtruck-1_triple-burger.jpg'), filename: 'f1-triple-burger.jpg')
p Item.create(name: "Frites", description: "pommes de terre frites", price: 4, foodtruck_id: 1).picture.attach(io: File.open('public/food_items_pictures/foodtruck-1_french-fries.jpg'), filename: 'f1-french-fries.jpg')
p Item.create(name: "Onions rings", description: "oignons frits", price: 3.50, foodtruck_id: 1).picture.attach(io: File.open('public/food_items_pictures/foodtruck-1_onion-rings.jpg'), filename: 'f1-onions-rings.jpg')

p 'Items - foodtruck 2'
p Item.create(name: "Nigiri saumon x2", description: "saumon, riz", price: 2.50, foodtruck_id: 2).picture.attach(io: File.open('public/food_items_pictures/foodtruck-2_nigiri-saumon.jpg'), filename: 'f2-nigiri-saumon.jpg')
p Item.create(name: "Nigiri crevette x2", description: "crevette, riz", price: 2.70, foodtruck_id: 2).picture.attach(io: File.open('public/food_items_pictures/foodtruck-2_nigiri-crevette.jpg'), filename: 'f2-nigiri-crevette.jpg')
p Item.create(name: "Nigiri thon x2", description: "thon, riz", price: 2.80, foodtruck_id: 2).picture.attach(io: File.open('public/food_items_pictures/foodtruck-2_nigiri-thon.jpg'), filename: 'f2-nigiri-thon.jpg')
p Item.create(name: "Maki saumon x6", description: "saumon, riz, feuille d'algues", price: 4.50, foodtruck_id: 2).picture.attach(io: File.open('public/food_items_pictures/foodtruck-2_maki-saumon.jpg'), filename: 'f2-maki-salmon.jpg')
p Item.create(name: "Maki thon x9", description: "thon, riz, feuille d'algues", price: 5.50, foodtruck_id: 2).picture.attach(io: File.open('public/food_items_pictures/foodtruck-2_maki-thon.jpg'), filename: 'f2-maki-tuna.jpg')
p Item.create(name: "Sashimi saumon x8", description: "saumon", price: 6, foodtruck_id: 2).picture.attach(io: File.open('public/food_items_pictures/foodtruck-2_sashimi-saumon.jpg'), filename: 'f2-sashimi-saumon.jpg')
p Item.create(name: "Sashimi thon x8", description: "thon", price: 8, foodtruck_id: 2).picture.attach(io: File.open('public/food_items_pictures/foodtruck-2_sashimi-thon.jpg'), filename: 'f2-sashimi-thon.jpg')
p Item.create(name: "Crevettes tempura x3", description: "crevette", price: 4, foodtruck_id: 2).picture.attach(io: File.open('public/food_items_pictures/foodtruck-2_crevette-tempura.jpg'), filename: 'f2-crevettes-tempura.jpg')
p Item.create(name: "Gyoza poulet x4", description: "poulet, chou, ail, oignon, ciboulette", price: 4, foodtruck_id: 2).picture.attach(io: File.open('public/food_items_pictures/foodtruck-2_gyoza-poulet.jpg'), filename: 'f2-gyoza-poulet.jpg')
p Item.create(name: "Gyoza veggie x4", description: "chou, carotte, oignon, poireau", price: 3.50, foodtruck_id: 2).picture.attach(io: File.open('public/food_items_pictures/foodtruck-2_gyoza-veggie.jpg'), filename: 'f2-gyoza-veggie.jpg')
p Item.create(name: "Sashimi bowl", description: "tranche de saumon x6, tranche de saumon x6, riz, salade d’algues", price: 3.50, foodtruck_id: 2).picture.attach(io: File.open('public/food_items_pictures/foodtruck-2_sashimi-bowl.jpg'), filename: 'f2-sashimi-bowl.jpg')
p Item.create(name: "Tempura bowl", description: "riz, salade de chou, gyoza poulet x3, crevette tempura x3, avocat, graines de sésame", price: 3.50, foodtruck_id: 2).picture.attach(io: File.open('public/food_items_pictures/foodtruck-2_tempura-bowl.jpg'), filename: 'f2-tempura-bowl.jpg')

p 'Items - foodtruck 3'
p Item.create(name: "Salade niçoise", description: "mesclun, oeuf, thon, olives, tomates, poivron, anchois", price: 6.50, foodtruck_id: 3).picture.attach(io: File.open('public/food_items_pictures/foodtruck-3_nicoise.jpg'), filename: 'f3-nice-salad.jpg')
p Item.create(name: "Salade césar", description: "laitue, poulet, croûtons, parmesan", price: 6.50, foodtruck_id: 3).picture.attach(io: File.open('public/food_items_pictures/foodtruck-3_cesar.jpg'), filename: 'f3-caesar-salad.jpg')
p Item.create(name: "Salade lyonnaise", description: "salade, oeuf, thon, croûtons, jambon, olives", price: 7, foodtruck_id: 3).picture.attach(io: File.open('public/food_items_pictures/foodtruck-3_lyonnaise.jpg'), filename: 'f3-lyon-salad.jpg')
p Item.create(name: "Salade nordique", description: "salade, tomate, saumon fumé, olives", price: 8.50, foodtruck_id: 3).picture.attach(io: File.open('public/food_items_pictures/foodtruck-3_nordique.jpg'), filename: 'f3-nordic-salad.jpg')
p Item.create(name: "Salade gourmande", description: "mâche, roquette, poulet, mozzarella, oeuf, tomate cerise, avocat, noix", price: 10, foodtruck_id: 3).picture.attach(io: File.open('public/food_items_pictures/foodtruck-3_gourmande.jpg'), filename: 'f3-yummy-salad.jpg')
p Item.create(name: "Salade périgourdine", description: "salade frisée, pommes de terre, tomate, haricots verts, gésiers confts, lardons", price: 10.50, foodtruck_id: 3).picture.attach(io: File.open('public/food_items_pictures/foodtruck-3_perigourdine.jpg'), filename: 'f3-perigord-salad.jpg')
p Item.create(name: "Salade de pâtes", description: "pâtes fusilli, tomate, oignon, basilic, mozzarella, olives", price: 6.50, foodtruck_id: 3).picture.attach(io: File.open('public/food_items_pictures/foodtruck-3_pates.jpg'), filename: 'f3-pasta-salad.jpg')
p Item.create(name: "Salade de crudités", description: "tomate, maïs, poivron, concombre, soja", price: 7, foodtruck_id: 3).picture.attach(io: File.open('public/food_items_pictures/foodtruck-3_crudites.jpg'), filename: 'f3-crudites-salad.jpg')
p Item.create(name: "Salade grecque", description: "tomate, poivron, concombre, feta, olives, oignon, basilic", price: 9.50, foodtruck_id: 3).picture.attach(io: File.open('public/food_items_pictures/foodtruck-3_grecque.jpg'), filename: 'f3-greak-salad.jpg')
p Item.create(name: "Salade de exotique", description: "épinards, grenade, poulet, betterave, olives", price: 6.50, foodtruck_id: 3).picture.attach(io: File.open('public/food_items_pictures/foodtruck-3_exotique.jpg'), filename: 'f3-exotic-salad.jpg')

p 'Items - foodtruck 4'
p Item.create(name: "Pizza margherita", description: "tomate, mozzarella, basilic", price: 8.50, foodtruck_id: 4).picture.attach(io: File.open('public/food_items_pictures/foodtruck-4_margherita.jpg'), filename: 'f4-margherita-pizza.jpg')
p Item.create(name: "Pizza pepperoni", description: "tomate, pepperoni, emmental", price: 9.50, foodtruck_id: 4).picture.attach(io: File.open('public/food_items_pictures/foodtruck-4_pepperoni.jpg'), filename: 'f4-napolitain-pizza.jpg')
p Item.create(name: "Pizza savoyarde", description: "emmental, lardons, pommes de terre", price: 10, foodtruck_id: 4).picture.attach(io: File.open('public/food_items_pictures/foodtruck-4_savoyarde.jpg'), filename: 'f4-savoyard-pizza.jpg')
p Item.create(name: "Pizza végétarienne", description: "tomate, poivron, courgette, maïs, olives", price: 10.50, foodtruck_id: 4).picture.attach(io: File.open('public/food_items_pictures/foodtruck-4_vegetarienne.jpg'), filename: 'f4-veggie-pizza.jpg')
p Item.create(name: "Pizza piquante", description: "tomate, emmental, peppéroni, piment, harissa", price: 10.50, foodtruck_id: 4).picture.attach(io: File.open('public/food_items_pictures/foodtruck-4_piquante.jpg'), filename: 'f4-spicy-pizza.jpg')
p Item.create(name: "Pizza champignons", description: "tomate, emmental, jambon, champignons", price: 10.50, foodtruck_id: 4).picture.attach(io: File.open('public/food_items_pictures/foodtruck-4_champignons.jpg'), filename: 'f4-mushrooms-pizza.jpg')
p Item.create(name: "Pizza mixte", description: "tomate, aubergine, emmental, origan", price: 11, foodtruck_id: 4).picture.attach(io: File.open('public/food_items_pictures/foodtruck-4_mixte.jpg'), filename: 'f4-mixed-pizza.jpg')
p Item.create(name: "Pizza hawaïenne", description: "tomate, emmental, jambon, ananas", price: 11, foodtruck_id: 4).picture.attach(io: File.open('public/food_items_pictures/foodtruck-4_hawaienne.jpg'), filename: 'f4-hawai-pizza.jpg')
p Item.create(name: "Pizza napolitaine", description: "tomate, oignon, emmental, olives, anchoix, câpres", price: 12, foodtruck_id: 4).picture.attach(io: File.open('public/food_items_pictures/foodtruck-4_napolitaine.jpg'), filename: 'f4-napolitain-pizza.jpg')
p Item.create(name: "Pizza sucrée", description: "fraise, basilic, crème fraiche, groseille, kiwi", price: 13, foodtruck_id: 4).picture.attach(io: File.open('public/food_items_pictures/foodtruck-4_sucree.jpg'), filename: 'f4-sweet-pizza.jpg')

p 'Items - foodtruck 5'
p Item.create(name: "Beef tacos", description: "viande de boeuf, tomate, haricots rouges, poivron, oignon, fromage, tabasco", price: 8, foodtruck_id: 5).picture.attach(io: File.open('public/food_items_pictures/foodtruck-5_beef-tacos.jpg'), filename: 'f5-beef-tacos.jpg')
p Item.create(name: "Porc tacos", description: "viande de porc, tomate, haricots rouges, poivron, oignon, fromage, tabasco", price: 7, foodtruck_id: 5).picture.attach(io: File.open('public/food_items_pictures/foodtruck-5_pork-tacos.jpg'), filename: 'f5-pork-tacos.jpg')
p Item.create(name: "Fish tacos", description: "thon, tomate, haricots rouges, poivron, avocat, oignon", price: 7, foodtruck_id: 5).picture.attach(io: File.open('public/food_items_pictures/foodtruck-5_fish-tacos.jpg'), filename: 'f5-fish-tacos.jpg')
p Item.create(name: "Buritto", description: "galette de blé, viande de boeuf, tomate, salade, haricots noirs, poivron, oignon, fromage, crème fraiche", price: 9.50, foodtruck_id: 5).picture.attach(io: File.open('public/food_items_pictures/foodtruck-5_burrito.jpg'), filename: 'f5-burrito.jpg')
p Item.create(name: "Cheese quesadillas", description: "galette de maïs, fromage, oignon", price: 7.50, foodtruck_id: 5).picture.attach(io: File.open('public/food_items_pictures/foodtruck-5_cheese-quesadilla.jpg'), filename: 'f5-cheese-quesadilla.jpg')
p Item.create(name: "Chicken quesadillas", description: "galette de maïs, poulet, fromage, oignon, champignons, poivron", price: 8.50, foodtruck_id: 5).picture.attach(io: File.open('public/food_items_pictures/foodtruck-5_chiken-quesadilla.jpg'), filename: 'f5-chicken-quesadilla.jpg')
p Item.create(name: "Nachos", description: "chips tortilla, fromage, tomate, haricots rouges, maïs, oignon, guacamole, crème fraiche", price: 8.50, foodtruck_id: 5).picture.attach(io: File.open('public/food_items_pictures/foodtruck-5_nachos.jpg'), filename: 'f5-nachos.jpg')

p 'Items - foodtruck 6'
p Item.create(name: "Beyond meat burger", description: "steak vegan, salade, tomate, graines de sésame, avocat", price: 8, foodtruck_id: 6).picture.attach(io: File.open('public/food_items_pictures/foodtruck-6_veggie-burger.jpg'), filename: 'f6-veggie-burger.jpg')
p Item.create(name: "Buddha Bowl", description: "avocat, pois chiches, patate douce, riz blanc, citron", price: 13, foodtruck_id: 6).picture.attach(io: File.open('public/food_items_pictures/foodtruck-6_buddha-bowl.jpg'), filename: 'f6-buddha-bowl.jpg')
p Item.create(name: "Taboulé revisité", description: "semoule, romarin, tomate, orange, poivron", price: 10, foodtruck_id: 6).picture.attach(io: File.open('public/food_items_pictures/foodtruck-6_taboule-revisite.jpg'), filename: 'f6-taboule-revisite.jpg')
p Item.create(name: "Nouilles sautées", description: "nouilles, poivrons, piment, brocolis, graines de sésame", price: 8, foodtruck_id: 6).picture.attach(io: File.open('public/food_items_pictures/foodtruck-6_nouilles-sautees.jpg'), filename: 'f6-noodles.jpg')
p Item.create(name: "Tartines", description: "épinards, avocat, graines de sésame, pain de mie", price: 7, foodtruck_id: 6).picture.attach(io: File.open('public/food_items_pictures/foodtruck-6_tartines.jpg'), filename: 'f6-tartines.jpg')