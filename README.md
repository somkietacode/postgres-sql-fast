
# Environnement de Base de Données PostgreSQL avec Docker

Ce projet fournit un environnement de base de données PostgreSQL prêt à l'emploi, entièrement géré par Docker et Docker Compose. Il est conçu pour être à la fois simple à utiliser, configurable et résilient, avec une persistance des données garantie.

## ✨ Fonctionnalités

*   **Persistance des données** : Les données de votre base de données sont stockées dans un volume Docker, ce qui signifie qu'elles survivent aux redémarrages et aux recréations de conteneurs.
*   **Configuration centralisée** : Toutes les configurations (identifiants, ports, etc.) sont gérées dans un fichier `.env` pour plus de sécurité et de flexibilité.
*   **Gestion simplifiée** : Un script `manage.sh` fournit des commandes simples pour démarrer, arrêter, redémarrer et gérer l'environnement sans avoir à mémoriser les commandes Docker.
*   **Sécurité** : Le fichier `.env` contenant les secrets est ignoré par Git grâce au `.gitignore` pour éviter de les exposer accidentellement.
*   **Résilience** : La politique de redémarrage `unless-stopped` garantit que la base de données se relancera automatiquement en cas de crash ou de redémarrage du serveur.

## 📋 Prérequis

Avant de commencer, assurez-vous d'avoir installé les outils suivants sur votre machine :

*   [Docker](https://docs.docker.com/get-docker/)
*   [Docker Compose](https://docs.docker.com/compose/install/)

## 📂 Structure du projet

```
.
├── .env                # Fichier de configuration (à créer à partir du modèle)
├── .gitignore          # Ignore les fichiers sensibles comme .env
├── docker-compose.yml  # Définit le service de base de données
└── manage.sh           # Script de gestion de l'environnement
```

## 🚀 Installation et Démarrage

Suivez ces étapes pour mettre en place et lancer votre base de données.

### 1. Cloner ou créer les fichiers

Clonez ce dépôt ou créez manuellement les fichiers `docker-compose.yml`, `manage.sh` et `.gitignore` comme décrits précédemment.

### 2. Configurer l'environnement

Le fichier `.env` contient toutes les variables de configuration. Créez-le en copiant le modèle ci-dessous.

```ini
# Fichier : .env

# Configuration de la base de données PostgreSQL

DB_NAME=nom_de_la_base_de_donnée

# Identifiants (changez le mot de passe pour quelque chose de sécurisé)
POSTGRES_USER=monutilisateur
POSTGRES_PASSWORD=monmotdepassesecurise
POSTGRES_DB=madatabase

# Configuration réseau (changez si le port 5432 est déjà utilisé sur votre machine)
POSTGRES_PORT=5432
```

**Important** : Assurez-vous de choisir un `POSTGRES_PASSWORD` fort.

### 3. Rendre le script de gestion exécutable

Cette commande n'est à exécuter qu'une seule fois.

```bash
chmod +x manage.sh
```

### 4. Démarrer la base de données

Utilisez le script de gestion pour démarrer les services.

```bash
./manage.sh start
```

Votre base de données PostgreSQL est maintenant en cours d'exécution et prête à être utilisée !

## 🛠️ Usage

Le script `manage.sh` simplifie toutes les opérations courantes.

| Commande | Description |
| :--- | :--- |
| `./manage.sh start` | Démarre la base de données en arrière-plan. |
| `./manage.sh stop` | Arrête la base de données sans supprimer les conteneurs. |
| `./manage.sh restart` | Redémarre la base de données (utile pour appliquer certains changements). |
| `./manage.sh recreate` | Arrête, supprime et recrée les conteneurs. Utile après une modification du `docker-compose.yml`. |
| `./manage.sh logs` | Affiche les logs de la base de données en temps réel. (Appuyez sur `Ctrl+C` pour quitter). |
| `./manage.sh status` | Affiche le statut actuel des services. |
| `./manage.sh down` | Arrête et supprime les conteneurs et le réseau associé. **Les données sont conservées**. |
| `./manage.sh purge` | ⚠️ **ACTION DESTRUCTIVE** : Arrête tout et supprime le volume de données. **Toutes les données seront perdues**. |

## 🔌 Se connecter à la base de données

Vous pouvez vous connecter à votre instance PostgreSQL en utilisant n'importe quel client SQL (DBeaver, pgAdmin, psql, etc.) avec les informations suivantes (définies dans votre fichier `.env`) :

*   **Hôte** : `localhost`
*   **Port** : `5432` (ou la valeur de `POSTGRES_PORT` dans votre `.env`)
*   **Nom de la base de données** : `madatabase` (ou la valeur de `POSTGRES_DB`)
*   **Utilisateur** : `monutilisateur` (ou la valeur de `POSTGRES_USER`)
*   **Mot de passe** : Le mot de passe que vous avez défini dans `POSTGRES_PASSWORD`

## 🔒 Sécurité

Le fichier `.env` contient des informations sensibles comme le mot de passe de votre base de données. Le fichier `.gitignore` inclus dans ce projet est configuré pour ignorer le fichier `.env` afin qu'il ne soit jamais envoyé sur votre dépôt Git.

**Ne supprimez jamais la ligne `.env` de votre fichier `.gitignore`.**
