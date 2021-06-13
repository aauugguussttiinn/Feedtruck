## 1. Présentation
Le projet Feedtruck consiste en une application la mise en relation de particuliers avec les foodtrucks autour de chez eux sur Paris.
Le projet s'inscrit dans la tendance selon laquelle les consommateurs cherchent à faire venir leur repas à eux plutôt que de se déplacer et se différencie des solutions existantes sur le marché en proposant non pas de faire venir un livreur au consommateur mais tout le restaurant.
Ce projet permet de développer une relation de proximité avec les restaurateurs et et de fidéliser une clientèle amatrice de commerces de proximité. Cela permet également de se passer de livreurs, souvent exploités au mérpis du droit social dans les concepts concurrents.

Concrètement, les utilisateurs inscrits sur la plateforme accèdent à une liste de foodtruck dans leur ville. Les utilisateurs sont appelés à voter pour le foodtruck qu'ils souhaitent voir se déplacer dans leur quartier pour un repas donné. Le quartier ayant le plus voté pour un foodtruck le récupère pour le repas en question. Il est également possible de précommander des repas.

## 2. Parcours utilisateur
Lors de la première visite, l'utilisateur choisit "Je suis un foodtruck" ou "je suis un gourmet".

Si l'utilisateur indique qu'il est un foodtruck, il est appelé à se créer un compte pour pouvoir créer sa page de foodtruck et être référencé. Il renseigne nom du foodtruck, sa carte, ses jours de service et peut ajouter des photos.

Une fois connecté, le restaurateur peut suivre les votes pour chacun des repas à venir (jour même et lendemain). Il peut définir son point d'ancrage dans le quartier (le lieu où il s'installera).

Si l'utilisateur indique qu'il est un gourmet, accède à la liste des foodtrucks de sa ville, et peut visiter leurs pages. Et il peut passer commande sur le foodtruck de son choix (sign up ou login requis à ce moment-là). Dès lors qu'il est inscrit et connecté, il peut voter pour le foodtruck qu'il veut voir près de chez lui le lendemain (user.arrondissement.id). Chaque utilisateur peut voter une fois par jour. Les votes sont clos à minuit. Les foodtrucks qui ont reçu le plus de votes se rendent au lieu défini le lendemain.


## 3. Concrètement et techniquement

### 3.1. Base de données
TABLES :
Arrondissement : Prédéfinis (arrondissements parisiens et adresses en seed)
User : prénom(string), nom(string), email(string), arrondissement(id)
Foodtruck : nom(string)
Food item : name(string), price(integer), foodtruck(id)
Order : consommateurs(id), foodtruck(id), price (integer), date (dateTime)
Order item (JoinTable food_itm / order) : order(id), food(id), quantity (integer)



### 3.2. Front
Nous aurons besoin de différentes pages de "profil" pour les foodtrucks, ainsi qu'une page d'accueil, lesquelles auront des éléments dynamiques et quelques features JS pour le confort d'utilisation et la lisibilité du site. En bref :
- Bootstrap
- JS

### 3.3. Backend
- API Stripe
- API Sendgrid (mailing)
- Géolocalisation (sous réserve de temps)

### 3.4. Mes besoins techniques
Augustin : Un peu à l'aise partout (front, back, API) sans être expert en rien


## 4. La version minimaliste mais fonctionnelle qu'il faut avoir livré la première semaine
Après une semaine nous aurons fini :
- Le système d'inscription (consommateur et foodtruck)
- Les bases de données (avec Seed)
- Le système d'order
- L'accès aux pages restaurants et leurs menus

## 5. La version que l'on présentera aux jury
A la fin de la deuxième semaine nous aurons ajouté :
- Mis en place des alertes
- Choix d'une tranche horaire pour récupérer sa commande
- Le système de vote

## 6. Notre mentor
Bénédicte KANY, passée par la formation THP de la promotion de sept-décembre 2020, nous fait le plaisir d'être notre mentor. Aujourd'hui développeur en Java pour un SAAS, revenir sur ses premiers amours du Ruby on Rails ne lui fait pas peur :)  Elle nous apportera a minima un point de vue extérieur sur notre projet, pour pouvoir le mener jusqu'au bout 


This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
