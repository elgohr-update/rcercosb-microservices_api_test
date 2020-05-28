FROM ubuntu 

# El SO que utilitza el contenidor

MAINTAINER Roger Cercós Blanch

RUN apt-get install -y python3

# Instal·la el Python

RUN apt-get install -y python3-pip

# Instal·la el pip

RUN pip3 install Flask

# Instal·la el Flask

ADD servei_principal.py /home/servei_principal.py

# Copia el fitxer de codi font

CMD ["python3", "/home/servei_principal.py"]

# Executa el codi

EXPOSE 80

# Obre el port 80 (HTTP)
