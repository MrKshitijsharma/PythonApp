#1 Create a base Image (OS)
FROM python:3.10.21-slim-trixie

#2 Create a working Directory
WORKDIR /app/pythonapp

#3 Copy the source code to the container
COPY . .

#4 adding prerequisite commands to run the python code 
RUN pip install psutil
RUN pip install py-notifier
RUN pip install win11toast

#if we want to add a port , we can expose port
EXPOSE 3000

#run the python command and serve the application
CMD ["python","battery.py"]
