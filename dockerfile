# Imagen de la tarea
FROM tarea
# Set the working directory to /app
WORKDIR /app/
# Copy the current directory contents into the container at /app
ADD . /app
#RUN apt-get update 
#RUN apt-get install git -y
# Make port 80 available to the world outside this container
# Define environment variable
EXPOSE 80
ENV NAME="repo"
RUN chmod +x createZip.sh
RUN apt-get install zip -y
# Run index.js when the container launches

CMD [ "bash","createZip.sh" ]
