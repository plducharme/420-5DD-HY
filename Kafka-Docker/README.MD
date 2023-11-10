# Docker Kafka composer file
- Ce fichier permet de partir un cluster de container Kafka avec Docker
- Roulez la commande suivante dans le répertoire
> docker-compose up -d

- Ceci va partir 2 instances de zookeeper avec 2 broker de Kafka
- Pour monitorer Kafka, inspecter les Topics, créer des topics, etc; on peut utiliser Offset Explorer 
(anciennement Kafka tools) [Télécharger](https://www.kafkatool.com/download.html)
- Dans Offset Explorer
  - Pour se connecter
    - S'assurer que Kafka roule dans votre Docker
    - Sous l'onglet "Properties"
      - Ajouter un nom de cluster de votre choix
      - Choisir "3.2" pour le "Kafka Cluster version"
    - Sous l'onglet "Advanced"
      - Pour "Bootstrap servers": 
        - localhost:29092
          - Il est possible de tous les spécifier, mais en se connectant à un, les autres seront découvert via Zookeeper
    - "Test" (en bas à droite)
    - "Add"  (en bas à droite)
  - Il vous est possible maintenant d'explorer les Topics existants ou d'en créer de nouveaux
    - Par défaut, Kafka va dynamiquement créer un Topic si un producer envoie un message sur un Topic inexistant
  