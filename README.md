![work status](https://img.shields.io/badge/work-on%20progress-red.svg) 
![Ngor Seck](https://img.shields.io/badge/Ngor%20Seck-Java-green) 
![Java](https://img.shields.io/badge/Ngor%20Seck-Struts-yellowgreen)
![Jetty](https://img.shields.io/badge/Ngor%20Seck-JettyWebServer-blue)
# Documentation

Ce projet vous montre comment pusher un projet web maven vers docker hub puis l'executer avec docker.


## Configuration du projet

Vous devez ajouter le fichier settings.xml dans votre .m2 ou votre repos central local.
Et voici le contnu du fichier: remplacer USERNAME_DOCKER_HUB par le username de votre compte docker hub et PASSWORD__DOCKER_HUB par votre mot de passe. 
Si vous en avez pas créez un compte ici [https://hub.docker.com/]

```bash
<settings xmlns="http://maven.apache.org/SETTINGS/1.1.0"
          xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
          xsi:schemaLocation="http://maven.apache.org/SETTINGS/1.1.0
                      https://maven.apache.org/xsd/settings-1.1.0.xsd">
    <servers>
        <server>
            <id>docker.io</id>
            <username>USERNAME_DOCKER_HUB</username>
            <password>PASSWORD__DOCKER_HUB</password>
        </server>
    </servers>
</settings>
```

## Installation

Utiliser maven pour pusher le projet.

```bash
mvn clean package dockerfile:push
```


## Usage

Et pour lancer le projet avec un autre port exemple 8081, taper cette commande docker:

```bash
docker run -p 8081:8080 ngorseck/struts-docker:1.0
```

En fin, lancez votre nativation puis tapez cette url:

```bash
http://localhost:8081/strutsDocker/
```
