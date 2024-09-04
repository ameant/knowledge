Projet PHP Symfony nommé knowledge installé avec cette commande : symfony new knowledge --webapp


Prérequis :
- Composer (composer install pour installer un projet // composer update pour mettre à jour les dépendances // composer require pour ajouter une dépendance)
- Symfony - CLI (https://symfony.com/download)
- PHP


Cloner le projet depuis GitHub :
- git clone https://github.com/ameant/knowledge
- cd knowledge


Installer les dépendances :
- composer install


Informations de la base de données via le fichier .env et DATABASE_URL="mysql://root:@127.0.0.1:3306/knowledge?serverVersion=8.3.0&charset=utf8mb4"
id db : root
mdp vide


Créer la base de données :
- symfony console doctrine:database:create

Exécuter les migrations :
- symfony console doctrine:migrations:migrate


Accès fixtures de la base de données
- se connecter à PhpMyAdmin via wamp ou wamp par exemple
- sélectionner la base de données knowledge
- aller dans l'onglet Import
- cliquer sur Choisir un fichier et sélectionnez le fichier knowledge.sql
- cliquer sur Exécuter pour importer les données


Lancer le serveur du projet en local :
- cd knowledge
- symfony serve


<<<<<<< HEAD
Accès fixtures base de données : fichier knowledge.sql
=======
Utiliser Symfony CLI :
- Générer des entités : symfony console make:entity
- Créer des contrôleurs : symfony console make:controller
- Exécuter des tests : symfony console test
>>>>>>> 4e3efa8ac9a12ab18892121bc4ed4422a51f8f83

Autres commandes utiles :
- Mettre à jour les dépendances : composer update
- Nettoyer le cache : symfony console cache:clear
