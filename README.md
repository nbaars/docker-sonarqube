## Docker image voor SonarQube

Het standaard sonarqube-alpine image bevat geen enkele language plugin, ook java language plugin ontbreekt.
We hebben daarom een eigen image gemaakt dat niet veel meer is dan de standaard sonarqube-alpine image
waar één of meerdere language module(s) aan is toegevoegd, zie de Dockerfile

Het maken/update van de image doe je met:

```bash
docker build -t alliander/sonarqube:5.6.2-2 .
```

Om dit image beschikbaar te hebben in de k8s omgeving(en) moet het nog gepushed worden naar onze repository:

```bash
docker push alliander/sonarqube:5.6.2-1
```

*Check het versie nummer voordat je bovenstaande commando's uitvoert! De bedoeling is dat deze repo automatisch gebouwd gaat worden middels Docker Hub of Quay.io. Op dit moment is het nog niet zover en moeten wijzigingen in deze repo's handmatig gepushed worden.*


## Lokaal

Om wijzigingen te testen gebruik de volgende commando's:

```bash
docker build -t sonar-local .
docker run -p 9000:9000 sonar-local
docker exec -it <<id>> sh
```
