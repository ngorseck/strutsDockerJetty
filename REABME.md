La commande a taper pour pusher vers docker hub
$mvn clean package dockerfile:push  


il faut aussi ajouter le fichier settings.xml dans votre .m2 ou votre repos central local
Et voici le contnu du fichier

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


Et pour lancer le projet avec un autre port exemple 8081:
$docker run -p 8081:8080 ngorseck/struts-docker:1.0