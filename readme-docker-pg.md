

1. **Démarrer les Services avec Docker Compose**

   Exécutez la commande suivante dans le répertoire racine du projet où se trouve votre fichier `docker-compose.yml` :

   docker-compose up -d

Cette commande télécharge les images nécessaires, construit les conteneurs selon les spécifications du fichier docker-compose.yml et les démarre en mode détaché.

    Arrêter les Services

    Pour arrêter les conteneurs et les mettre en veille :

    docker-compose down

Utilisation de la Base de Données

Pour interagir avec la base de données PostgreSQL à l'intérieur du conteneur Docker :

    Exécuter un Fichier SQL

    Pour exécuter un fichier SQL (db.sql) qui se trouve sur votre machine hôte, utilisez la commande suivante :

cat db.sql | docker exec -i app_test-db-1 psql -U postgres

Cette commande lit le contenu du fichier db.sql et le passe directement à psql dans le conteneur app_test-db-1. Cela permet d'exécuter les instructions SQL contenues dans le fichier sans avoir besoin de copier le fichier dans le conteneur.

Connexion Interactif à la Base de Données

Pour démarrer une session psql interactive à l'intérieur du conteneur PostgreSQL :

docker exec -it app_test-db-1 psql -U postgres

Utilisez cette commande pour accéder à l'invite de commande psql, où vous pouvez exécuter des commandes SQL directement