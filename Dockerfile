FROM ubuntu 

# El SO que utilitza el contenidor

MAINTAINER Roger Cercós Blanch

RUN apt-get update

RUN apt-get install -y python3

# Instal·la el Python

RUN apt-get install -y python3-pip

# Instal·la el pip

RUN pip3 install Flask

# Instal·la el Flask

RUN pip3 install flask-restplus

# Instal·la restplus, permet crear API REST amb el Flask.

ADD servei_principal.py /home/servei_principal.py

# Copia el fitxer de codi font

EXPOSE 5000

# Obre el port 5000 (Flask)

CMD ["python3", "/home/servei_principal.py"]

# Executa el codi
