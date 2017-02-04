## Docker image voor SonarQube

Het standaard sonarqube-alpine image bevat geen enkele language plugin, ook java language plugin ontbreekt.
We hebben daarom een eigen image gemaakt dat niet veel meer is dan de standaard sonarqube-alpine image
waar één of meerdere language module(s) aan is toegevoegd, zie de Dockerfile

Het maken/update van de image doe je met:
```console
$ docker build -t sonarqube:5.6.1-1 .
```

Om dit image beschikbaar te hebben in de k8s omgeving(en) moet het nog gepushed worden naar onze repository:
```console
$ docker push alliander/sonarqube:5.6.1-1
```

*Check het versie nummer voordat je bovenstaande commando's uitvoert! De bedoeling is dat deze repo automatisch gebouwd gaat worden middels Docker Hub of Quay.io. Op dit moment is het nog niet zover en moeten wijzigingen in deze repo's handmatig gepushed worden.*