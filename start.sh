#! bin/bash
docker run --rm --name tarea1 -p 8080:3000 -v /home/luisubuntu/Escritorio/TareaDocker/webserver:/app -e REPO=https://github.com/luisgilberto1995/tareasa.git -it web-tarea bash 
#docker run --rm --name taread -d -p 8081:3000 -v /home/luigitercero/Documents/dockerbuild/serviciosSA/TareaV02/:/app -e REPO=https://github.com/luisgilberto1995/tareasa.git -it web-tarea bash 