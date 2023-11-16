# Utilisation de Kubernetes avec une image locale
1) [Installer MiniKube](https://minikube.sigs.k8s.io/docs/start/)
2) Si vous n'avez pas utilisé l'installer, ajouter MiniKube au PATH de windows
3) Installer kubectl et l'ajouter au PATH
>minikube kubectl -- get po -A  

- Techniquement, vous avez déjà un kubectl qui a été installé avec Docker, celui-ci devrait marcher
  - Si vous installer une nouvelle version avec la commande ci-dessus, ne pas oublier de mettre le répertoire du nouveau
kubectl plus "haut" que Docker dans le PATH
4) Partir le cluster
- Partir Docker Desktop pour que le docker Engine roule
>docker context use default  
>minikube start --driver=docker
5) Partir le proxy
>kubectl proxy
- Il est possible maintenant de voir la console Kubernetes
  - [http://localhost:8001/api/v1/namespaces/kubernetes-dashboard/services/http:kubernetes-dashboard:/proxy](http://localhost:8001/api/v1/namespaces/kubernetes-dashboard/services/http:kubernetes-dashboard:/proxy)
6) Par défaut minikube a seulement une liste de "repo" distant, il faut donc ajouter l'image docker locale de l'application
au repo local de minikube
>minikube image load <nom de l'image Docker locale>
- Ensuite vous pouvez vérifier les images disponibles
>minkube image ls
7) Créer le déploiement et le service
   - Il est possible de créer manuellement ou d'utiliser un fichier qui contient toute les configs
     - Pour l'utilisation manuelle, se référer au [Tutoriel de Kubernetes](https://kubernetes.io/docs/tutorials/hello-minikube/)
     - pour les créer via un fichier
>kubectl create -f "nom_du_fichier_yaml"
8) Pour ouvrir le service,
>minikube service <nom du service>
- Ceci ouvrira un navigateur avec le service
- Pour la liste des services
>kubectl get services