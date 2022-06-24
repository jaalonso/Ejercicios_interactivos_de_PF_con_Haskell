# Instrucciones:
# + Para crear la imagen 
#      docker build -t jaalonso/ejercicios-de-pf-con-haskell:v2 .
# + Para ejecutarla
#      docker run --rm -p 8888:8888 -v $PWD/ejercicios:/home/jovyan/pwd --name ejercicios-de-pf-con-haskell jaalonso/ejercicios-de-pf-con-haskell:v2

FROM jaalonso/ihaskell-i1m:v2

USER root

RUN mkdir /home/$NB_USER/ejercicios
COPY ejercicios/*.ipynb /home/$NB_USER/ejercicios/
RUN chown --recursive $NB_UID:users /home/$NB_USER/ejercicios

USER $NB_UID

ENV JUPYTER_TOKEN=x
ENV JUPYTER_ENABLE_LAB=yes
