FROM ubuntu:18.04
RUN apt update \
  && apt install -y -q \
     apache2 \
     ssh
ARG MY_VAR
RUN echo $MY_VAR
ENV A_MY_VAR=$MY_VAR
CMD service apache2 start
#ENTRYPOINT service apache2 start && bash
