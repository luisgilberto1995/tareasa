FROM tarea
# Set the working directory to /app
WORKDIR /app/
# Copy the current directory contents into the container at /app
ADD . /app
EXPOSE 80
# Define environment variable
ENV NAME="repo"
CMD [ "bash","createZip.sh" ]