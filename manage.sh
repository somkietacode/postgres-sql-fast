#!/bin/bash

# ==============================================================================
# Script de gestion pour l'environnement de base de données PostgreSQL
#
# Prérequis : docker, docker-compose et un fichier .env doivent être présents.
# Usage : ./manage.sh [commande]
#
# Commandes :
#   start     : Démarre les services en arrière-plan.
#   stop      : Arrête les services.
#   restart   : Redémarre les services sans les recréer.
#   recreate  : Arrête, supprime et recrée les conteneurs (utile après une modification du docker-compose.yml).
#   logs      : Affiche les logs du service de base de données en temps réel.
#   status    : Affiche le statut des conteneurs.
#   down      : Arrête et supprime les conteneurs et le réseau.
#   purge     : ATTENTION: Arrête tout et supprime le volume de données (perte de toutes les données).
# ==============================================================================

# --- Fonctions ---

# Affiche le message d'aide
usage() {
    echo "Usage: $0 {start|stop|restart|recreate|logs|status|down|purge}"
    echo "Exemple: ./manage.sh start"
}

# Vérifie si le fichier .env existe
check_env_file() {
    if [ ! -f .env ]; then
        echo "Erreur : Le fichier .env est introuvable."
        echo "Veuillez créer un fichier .env avant de lancer le script."
        exit 1
    fi
}

# Démarre les conteneurs
start_services() {
    echo "Démarrage des services Docker Compose..."
    docker-compose up -d
    echo "Services démarrés."
    docker-compose ps
}

# Arrête les conteneurs
stop_services() {
    echo "Arrêt des services Docker Compose..."
    docker-compose stop
    echo "Services arrêtés."
}

# Redémarre les conteneurs
restart_services() {
    echo "Redémarrage des services Docker Compose..."
    docker-compose restart
    echo "Services redémarrés."
}

# Affiche les logs du service de base de données
show_logs() {
    echo "Affichage des logs du service 'db' (Ctrl+C pour quitter)..."
    # Le nom 'db' correspond au nom du service dans docker-compose.yml
    docker-compose logs -f db
}

# Arrête et supprime les conteneurs
down_services() {
    echo "Arrêt et suppression des conteneurs..."
    docker-compose down
    echo "Conteneurs et réseau supprimés."
}

# Purge complète (conteneurs, réseau ET volume de données)
purge_all() {
    echo "ATTENTION : Vous êtes sur le point de supprimer les conteneurs ET toutes les données de la base de données."
    read -p "Êtes-vous absolument sûr ? Cette action est IRRÉVERSIBLE. (oui/non): " confirmation
    if [[ "$confirmation" == "oui" ]]; then
        echo "Purge complète en cours..."
        # L'option -v supprime les volumes nommés
        docker-compose down -v
        echo "Purge terminée."
    else
        echo "Action annulée."
    fi
}


# --- Logique du script ---

# Vérifier d'abord que .env existe pour toutes les commandes
check_env_file

case "$1" in
    start)
        start_services
        ;;
    stop)
        stop_services
        ;;
    restart)
        restart_services
        ;;
    recreate)
        down_services
        start_services
        ;;
    logs)
        show_logs
        ;;
    status)
        docker-compose ps
        ;;
    down)
        down_services
        ;;
    purge)
        purge_all
        ;;
    *)
        usage
        exit 1
esac

exit 0
